class GameHistoryEntry {
  const GameHistoryEntry({
    required this.wish,
    required this.startedAt,
    this.completedAt,
    required this.completedFieldsCount,
    this.successCode,
  });

  final String wish;
  final DateTime startedAt;
  final DateTime? completedAt;
  final int completedFieldsCount;
  final String? successCode;

  bool get isCompleted => completedAt != null;

  GameHistoryEntry copyWith({
    DateTime? completedAt,
    int? completedFieldsCount,
    String? successCode,
  }) => GameHistoryEntry(
    wish: wish,
    startedAt: startedAt,
    completedAt: completedAt ?? this.completedAt,
    completedFieldsCount: completedFieldsCount ?? this.completedFieldsCount,
    successCode: successCode ?? this.successCode,
  );

  Map<String, dynamic> toJson() => {
    'wish': wish,
    'startedAt': startedAt.toIso8601String(),
    'completedAt': completedAt?.toIso8601String(),
    'completedFieldsCount': completedFieldsCount,
    'successCode': successCode,
  };

  factory GameHistoryEntry.fromJson(Map<String, dynamic> json) => GameHistoryEntry(
    wish: json['wish'] as String,
    startedAt: DateTime.parse(json['startedAt'] as String),
    completedAt: json['completedAt'] != null ? DateTime.parse(json['completedAt'] as String) : null,
    completedFieldsCount: json['completedFieldsCount'] as int,
    successCode: json['successCode'] as String?,
  );
}
