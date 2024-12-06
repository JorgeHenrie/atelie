class ClassSession {
  final String id;
  final DateTime date;
  final String time;
  final List<String> studentIds;
  final List<String> waitingList;

  // Construtor
  ClassSession({
    required this.id,
    required this.date,
    required this.time,
    required this.studentIds,
    required this.waitingList,
  });

  // Converter de JSON para ClassSession
  factory ClassSession.fromJson(Map<String, dynamic> json) {
    return ClassSession(
      id: json['id'] as String,
      date: DateTime.parse(json['date']),
      time: json['time'] as String,
      studentIds: List<String>.from(json['studentIds']),
      waitingList: List<String>.from(json['waitingList']),
    );
  }

  // Converter ClassSession para JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'time': time,
      'studentIds': studentIds,
      'waitingList': waitingList,
    };
  }
}
