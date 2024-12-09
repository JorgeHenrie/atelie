import 'package:atelie/widget/FeaturesRowWidget%20.dart';
import 'package:atelie/widget/bannerWidget.dart';
import 'package:atelie/widget/searchBarWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userName = "João"; // Nome do usuário logado (exemplo)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olá, $userName"), // Saudação no AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print("Notificações clicadas");
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              print("Sair clicado");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerWidget(
              onTap: () {
                // Navegar para os benefícios da Poleterapia
                Navigator.pushNamed(context, '/benefits');
              },
            ),
            SizedBox(height: 20),
            SearchBarWidget(
              onSearch: (value) {
                print("Texto pesquisado: $value");
              },
            ),
            SizedBox(height: 20),
            FeaturesRowWidget(),
          ],
        ),
      ),
    );
  }
}
