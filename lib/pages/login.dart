import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  void _logar() {
    if (_formKey.currentState!.validate()) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://www.somosicev.com/wp-content/uploads/2022/11/FACHADA.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 218, 218, 218),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://img.freepik.com/vetores-gratis/vetor-de-gradiente-de-logotipo-colorido-de-passaro_343694-1365.jpg?semt=ais_rp_progressive&w=740&q=80",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Digite seu email";
                          }

                          if (!value.contains("@")) {
                            return "Digite um email válido";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(onPressed: _logar, child: Text("Login")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
