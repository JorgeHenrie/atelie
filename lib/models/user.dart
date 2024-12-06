class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final int remainingClasses;
  final List<String> enrolledSessions;

  // Construtor
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.remainingClasses,
    required this.enrolledSessions,
  });

  // Converter de JSON para User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      remainingClasses: json['remainingClasses'] as int,
      enrolledSessions: List<String>.from(json['enrolledSessions']),
    );
  }

  // Converter User para JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'remainingClasses': remainingClasses,
      'enrolledSessions': enrolledSessions,
    };
  }
}
