import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> students = [
    {'name': 'João', 'remainingClasses': 5},
    {'name': 'Maria', 'remainingClasses': 3},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Dashboard')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student['name']),
            subtitle: Text('Aulas Restantes: ${student['remainingClasses']}'),
          );
        },
      ),
    );
  }
}
