import 'package:atelie/widget/CustomOutlinedButton.dart';
import 'package:atelie/widget/DividerWithText.dart';
import 'package:atelie/widget/buidLoginForm.dart';
import 'package:atelie/widget/buidTile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100], // Fundo com tom artístico
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Título do ateliê
              buildTitle(),
              SizedBox(height: 30),

              // Formulário de login
              buildLoginForm(context),
              SizedBox(height: 20),

              // Separador com "Ou"
              DividerWithText(text: 'Ou'),
              SizedBox(height: 20),

              // Botão de criar conta
              CustomOutlinedButton(
                text: 'Criar conta',
                onPressed: () {
                  // Navegar para a página de criação de conta
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
