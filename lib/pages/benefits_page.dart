import 'package:flutter/material.dart';

class BenefitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Benefícios da Poleterapia'),
      ),
      body: Center(
        child: Text(
          'Aqui você pode ver os benefícios da poleterapia!',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
