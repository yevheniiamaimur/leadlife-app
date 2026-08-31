class JourneyEntry {
  const JourneyEntry({
    required this.fieldNumber,
    required this.question,
    required this.answer,
    required this.codes,
    this.roll,
    this.nextFieldNumber,
  });

  final int fieldNumber;
  final String question;
  final String answer;
  final List<String> codes;
  final int? roll;
  final int? nextFieldNumber;

  JourneyEntry copyWith({int? roll, int? nextFieldNumber}) => JourneyEntry(
    fieldNumber: fieldNumber,
    question: question,
    answer: answer,
    codes: codes,
    roll: roll ?? this.roll,
    nextFieldNumber: nextFieldNumber ?? this.nextFieldNumber,
  );

  Map<String, dynamic> toJson() => {
    'fieldNumber': fieldNumber,
    'question': question,
    'answer': answer,
    'codes': codes,
    if (roll != null) 'roll': roll,
    if (nextFieldNumber != null) 'nextFieldNumber': nextFieldNumber,
  };

  factory JourneyEntry.fromJson(Map<String, dynamic> json) => JourneyEntry(
    fieldNumber: json['fieldNumber'] as int,
    question: json['question'] as String? ?? '',
    answer: json['answer'] as String? ?? '',
    codes: (json['codes'] as List? ?? const []).cast<String>(),
    roll: json['roll'] as int?,
    nextFieldNumber: json['nextFieldNumber'] as int?,
  );
}
