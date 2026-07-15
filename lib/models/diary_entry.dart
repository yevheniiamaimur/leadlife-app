class DiaryEntry {
  const DiaryEntry({required this.date, required this.text});
  final DateTime date;
  final String text;

  Map<String, dynamic> toJson() => {
    'date': date.toIso8601String(),
    'text': text,
  };

  factory DiaryEntry.fromJson(Map<String, dynamic> json) => DiaryEntry(
    date: DateTime.parse(json['date'] as String),
    text: json['text'] as String,
  );
}
