import 'package:cloud_functions/cloud_functions.dart';

/// AI-personalized content for one field, as returned by
/// [AiService.generateGame]. See [GameContentService] for how this gets
/// merged into the static field skeleton.
class GeneratedFieldContent {
  const GeneratedFieldContent({
    required this.n,
    required this.intro,
    required this.question,
    required this.arrivalNote,
  });

  factory GeneratedFieldContent.fromJson(Map<String, dynamic> json) =>
      GeneratedFieldContent(
        n: json['n'] as int,
        intro: json['intro'] as String,
        question: json['question'] as String,
        arrivalNote: json['arrivalNote'] as String,
      );

  final int n;
  final String intro;
  final String question;
  final String arrivalNote;

  Map<String, dynamic> toJson() => {
    'n': n,
    'intro': intro,
    'question': question,
    'arrivalNote': arrivalNote,
  };
}

/// One answered field, submitted to [AiService.finalAnalysis].
class AnswerEntry {
  const AnswerEntry({
    required this.n,
    required this.fieldName,
    required this.superpower,
    required this.question,
    required this.answer,
    this.codes = const [],
    this.roll,
    this.nextFieldNumber,
  });

  final int n;
  final String fieldName;
  final String superpower;
  final String question;
  final String answer;
  final List<String> codes;
  final int? roll;
  final int? nextFieldNumber;

  Map<String, dynamic> toJson() => {
    'n': n,
    'fieldName': fieldName,
    'superpower': superpower,
    'question': question,
    'answer': answer,
    'codes': codes,
    if (roll != null) 'roll': roll,
    if (nextFieldNumber != null) 'nextFieldNumber': nextFieldNumber,
  };
}

/// Result of a [AiService.finalAnalysis] call.
class FinalAnalysisResult {
  const FinalAnalysisResult({
    required this.analysis,
    required this.finalDirection,
    required this.recommendations,
  });

  final String analysis;
  final String finalDirection;
  final List<String> recommendations;
}

/// Thin wrapper around the Cloud Functions backing the AI game assistant.
/// The game works fully without AI (static fallback content), so every
/// method here is expected to be called from code that can fall back
/// gracefully — callers should catch [AiServiceException] rather than let
/// it propagate into core game flow.
class AiService {
  AiService._();

  static final FirebaseFunctions _functions = FirebaseFunctions.instance;

  static Future<List<GeneratedFieldContent>> generateGame({
    required String wish,
    required String languageCode,
    String? focus,
  }) async {
    try {
      final callable = _functions.httpsCallable('generateGame');
      final result = await callable.call<Map<String, dynamic>>({
        'wish': wish,
        'language': languageCode,
        if (focus != null && focus.isNotEmpty) 'focus': focus,
      });
      final fields = result.data['fields'] as List<dynamic>?;
      if (fields == null || fields.isEmpty) {
        throw const AiServiceException('Empty response from assistant.');
      }
      return fields
          .map(
            (f) => GeneratedFieldContent.fromJson(
              Map<String, dynamic>.from(f as Map),
            ),
          )
          .toList();
    } on FirebaseFunctionsException catch (e) {
      throw AiServiceException(e.message ?? e.code, code: e.code);
    }
  }

  static Future<FinalAnalysisResult> finalAnalysis({
    required String wish,
    required List<AnswerEntry> entries,
    required String languageCode,
  }) async {
    try {
      final callable = _functions.httpsCallable('finalAnalysis');
      final result = await callable.call<Map<String, dynamic>>({
        'wish': wish,
        'language': languageCode,
        'entries': entries.map((e) => e.toJson()).toList(),
      });
      final analysis = result.data['analysis'] as String?;
      final finalDirection = result.data['finalDirection'] as String?;
      final recommendations = result.data['recommendations'] as List<dynamic>?;
      if (analysis == null ||
          finalDirection == null ||
          recommendations == null) {
        throw const AiServiceException('Malformed response from assistant.');
      }
      return FinalAnalysisResult(
        analysis: analysis,
        finalDirection: finalDirection,
        recommendations: recommendations.map((r) => r as String).toList(),
      );
    } on FirebaseFunctionsException catch (e) {
      throw AiServiceException(e.message ?? e.code, code: e.code);
    }
  }
}

/// [code] mirrors [FirebaseFunctionsException.code] (e.g. `'failed-precondition'`
/// for a crisis-detected refusal) so callers can distinguish a safety refusal
/// from an ordinary failure without string-matching [message].
class AiServiceException implements Exception {
  const AiServiceException(this.message, {this.code});
  final String message;
  final String? code;

  bool get isCrisisDetected => code == 'failed-precondition';

  @override
  String toString() => message;
}
