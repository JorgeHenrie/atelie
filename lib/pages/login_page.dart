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
              // Logo e nome do ateliê
              Column(
                children: [
                  Text(
                    'Ateliê',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontFamily: 'BrushScript', // Fonte artística
                    ),
                  ),
                  Text(
                    'Laranja',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                      fontFamily: 'BrushScript', // Fonte artística
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Formulário de login
              Container(
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

                    // Campo de email
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.orange),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Campo de senha
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.orange),
                        hintText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Botão de login
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .orange, // Substituí 'primary' por 'backgroundColor'
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Entrar',
                        style: TextStyle(fontSize: 18),
                      ),
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
              ),
              SizedBox(height: 20),

              // Linha de separação
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.orange, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Ou',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.orange, thickness: 1)),
                ],
              ),
              SizedBox(height: 20),

              // Botão de criar conta
              OutlinedButton(
                onPressed: () {
                  // Navegar para a página de criação de conta
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.orange),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Criar conta',
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
