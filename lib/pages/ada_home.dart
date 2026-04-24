import 'package:ada_app/shared/materia_card.dart';
import 'package:flutter/material.dart';

class AdaHome extends StatefulWidget {
  const AdaHome({super.key});

  @override
  State<AdaHome> createState() => _AdaHomeState();
}

class _AdaHomeState extends State<AdaHome> {
  final materias = [
    "Mobile",
    "Prj Extensão",
    "Inglês",
    "Ciência de Dados",
    "Redes",
    "APA",
    "Teste",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ada App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView.builder(
          itemCount: materias.length,
          itemBuilder: (context, index) {
            return MateriaCard(nomeMateria: materias[index]);
          },
        ),
      ),
    );
  }
}
