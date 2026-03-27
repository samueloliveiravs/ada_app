import 'package:ada_app/service/usuario.dart';
import 'package:flutter/material.dart';

class AdaHome extends StatefulWidget {
  const AdaHome({super.key});

  @override
  State<AdaHome> createState() => _AdaHomeState();
}

class _AdaHomeState extends State<AdaHome> {
  var inputController = TextEditingController();
  bool isObscure = true;
  int _contador = 0;

  void _incrementarNumero() {
    _contador++;
    setState(() {});
  }

  void _vizuSenha() {
    if (isObscure) {
      isObscure = false;
    } else {
      isObscure = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    Usuario user = args["user"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Ada App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Text(user.nome, style: TextStyle(fontSize: 30)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: Text(user.email, style: TextStyle(fontSize: 30)),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Text("Tarde", style: TextStyle(fontSize: 30)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text("Ada", style: TextStyle(fontSize: 30)),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Text("Vespe", style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.amber,
                  child: Text("Tarde", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                        hintText: "Nome",
                        prefixIcon: Icon(Icons.person),
                        suffixIcon: InkWell(
                          onTap: _vizuSenha,
                          child: isObscure
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      keyboardType: TextInputType.webSearch,
                      obscureText: isObscure,
                      obscuringCharacter: "☁",
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Confirmar"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: _incrementarNumero,
        child: Icon(Icons.message),
      ),
    );
  }
}
