class GameHistoryEntry {
  const GameHistoryEntry({
    this.id,
    required this.wish,
    required this.startedAt,
    this.completedAt,
    required this.completedFieldsCount,
    this.successCode,
  });

  final int? id;
  final String wish;
  final DateTime startedAt;
  final DateTime? completedAt;
  final int completedFieldsCount;
  final String? successCode;

  bool get isCompleted => completedAt != null;

  Map<String, Object?> toMap() => {
    'wish': wish,
    'startedAt': startedAt.toIso8601String(),
    'completedAt': completedAt?.toIso8601String(),
    'completedFieldsCount': completedFieldsCount,
    'successCode': successCode,
  };

  factory GameHistoryEntry.fromMap(Map<String, Object?> map) => GameHistoryEntry(
    id: map['id'] as int?,
    wish: map['wish'] as String,
    startedAt: DateTime.parse(map['startedAt'] as String),
    completedAt: map['completedAt'] != null ? DateTime.parse(map['completedAt'] as String) : null,
    completedFieldsCount: map['completedFieldsCount'] as int,
    successCode: map['successCode'] as String?,
  );
}
