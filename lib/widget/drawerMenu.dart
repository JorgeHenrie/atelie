import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menu',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Agendar Aula'),
            onTap: () {
              Navigator.pushNamed(context, '/schedule');
            },
          ),
          ListTile(
            title: Text('Perfil do Aluno'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text('Admin Dashboard'),
            onTap: () {
              Navigator.pushNamed(context, '/admin');
            },
          ),
        ],
      ),
    );
  }
}
