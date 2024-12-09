import 'package:atelie/pages/AdminDashboardPage.dart';
import 'package:atelie/pages/StudentProfilePage.dart';
import 'package:atelie/pages/benefits_page.dart';
import 'package:atelie/pages/cad_user.dart';
import 'package:atelie/pages/list_students.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicialização do Firebase
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
        '/add-student': (context) => AddStudentPage(),
        '/home': (context) => HomePage(),
        '/list-students': (context) => ListStudentsPage(), // Nova rota
        '/schedule': (context) => SchedulePage(),
        '/profile': (context) => StudentProfilePage(),
        '/admin': (context) => AdminDashboardPage(),
        '/benefits': (context) => BenefitsPage(),
      },
    );
  }
}
