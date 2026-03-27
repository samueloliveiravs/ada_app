import 'package:ada_app/routes/app_routes.dart';
import 'package:ada_app/service/usuario.dart';
import 'package:flutter/material.dart';

import 'ada_home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();

  bool isObscure = true;

  void _logar() {
    if (_formKey.currentState!.validate()) {
      setState(() {});
    }

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => AdaHome(),
    //   ),
    // );

    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.home,
      (route) => false,
      arguments: {
        "user": Usuario(nome: "Roberto Santoro", email: "roberto@mobile.com"),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
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
          child: SingleChildScrollView(
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
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            controller: txtNome,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: "Nome",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Digite seu nome";
                              }
                              return null;
                            },
                          ),
                        ),
                        TextFormField(
                          controller: txtEmail,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
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
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            obscureText: isObscure,
                            decoration: InputDecoration(
                              icon: Icon(Icons.password),
                              labelText: "Senha",
                              border: OutlineInputBorder(),
                              suffixIcon: InkWell(
                                onTap: () {
                                  if (isObscure) {
                                    isObscure = false;
                                  } else {
                                    isObscure = true;
                                  }
                                  setState(() {});
                                },
                                child: isObscure
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Digite uma senha válida";
                              }

                              return null;
                            },
                          ),
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
      ),
    );
  }
}
