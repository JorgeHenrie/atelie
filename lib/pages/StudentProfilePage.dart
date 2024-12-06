import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  final int remainingClasses = 5;
  final List<String> paintings = [
    'assets/painting1.jpg',
    'assets/painting2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil do Aluno')),
      body: Column(
        children: [
          ListTile(
            title: Text('Aulas Restantes: $remainingClasses'),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: paintings.length,
              itemBuilder: (context, index) {
                return Image.asset(paintings[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
