import 'package:atelie/pages/AdminDashboardPage.dart';
import 'package:atelie/pages/StudentProfilePage.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ateliê de Pintura',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/schedule': (context) => SchedulePage(),
        '/profile': (context) => StudentProfilePage(),
        '/admin': (context) => AdminDashboardPage(),
      },
    );
  }
}
