import 'package:atelie/widget/drawerMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.exit_to_app),
          )
        ],
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Text('Bem-vindo ao Ateliê de Pintura!'),
      ),
    );
  }
}
