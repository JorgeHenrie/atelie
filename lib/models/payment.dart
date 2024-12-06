class Payment {
  final String id;
  final String userId;
  final double amount;
  final DateTime date;
  final String status;

  // Construtor
  Payment({
    required this.id,
    required this.userId,
    required this.amount,
    required this.date,
    required this.status,
  });

  // Converter de JSON para Payment
  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'] as String,
      userId: json['userId'] as String,
      amount: json['amount'] as double,
      date: DateTime.parse(json['date']),
      status: json['status'] as String,
    );
  }

  // Converter Payment para JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'amount': amount,
      'date': date.toIso8601String(),
      'status': status,
    };
  }
}
