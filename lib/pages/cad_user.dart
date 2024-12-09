import 'package:atelie/models/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddStudentPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController remainingClassesController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Aluno'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo Nome
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Campo E-mail
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Campo Telefone
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Telefone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Campo Aulas Restantes
            TextField(
              controller: remainingClassesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Aulas Restantes',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),

            // Botão Salvar
            ElevatedButton(
              onPressed: () async {
                if (_validateInputs(context)) {
                  await _addStudentToFirestore();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Aluno cadastrado com sucesso!')),
                  );
                  Navigator.pop(context);
                }
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }

  // Validar os campos do formulário
  bool _validateInputs(BuildContext context) {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        remainingClassesController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos.')),
      );
      return false;
    }
    return true;
  }

  // Adicionar aluno ao Firebase Firestore
  Future<void> _addStudentToFirestore() async {
    final user = User(
      id: FirebaseFirestore.instance.collection('users').doc().id,
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      remainingClasses: int.parse(remainingClassesController.text),
      enrolledSessions: [],
    );

    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.id)
        .set(user.toJson());
  }
}
