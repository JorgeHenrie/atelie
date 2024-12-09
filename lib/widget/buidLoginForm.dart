// Widget do formulário de login
import 'package:atelie/widget/CustomElevatedButton.dart';
import 'package:atelie/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

Widget buildLoginForm(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(height: 20),

        // Campo de e-mail
        CustomTextField(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        SizedBox(height: 20),

        // Campo de senha
        CustomTextField(
          hintText: 'Senha',
          prefixIcon: Icons.lock,
          obscureText: true,
        ),
        SizedBox(height: 20),

        // Botão de login
        CustomElevatedButton(
          text: 'Entrar',
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        SizedBox(height: 10),

        // Link "Esqueceu a senha?"
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // Ação para recuperação de senha
            },
            child: Text(
              'Esqueceu a senha?',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    ),
  );
}
