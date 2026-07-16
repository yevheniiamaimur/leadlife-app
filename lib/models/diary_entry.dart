class DiaryEntry {
  const DiaryEntry({this.id, required this.date, required this.text});
  final int? id;
  final DateTime date;
  final String text;

  Map<String, Object?> toMap() => {
    'date': date.toIso8601String(),
    'text': text,
  };

  factory DiaryEntry.fromMap(Map<String, Object?> map) => DiaryEntry(
    id: map['id'] as int?,
    date: DateTime.parse(map['date'] as String),
    text: map['text'] as String,
  );
}
