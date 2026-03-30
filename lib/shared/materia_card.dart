import 'package:flutter/material.dart';

class MateriaCard extends StatelessWidget {
  final String nomeMateria;
  const MateriaCard({super.key, required this.nomeMateria});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 300,
      color: Colors.amber,
      child: Column(
        children: [
          Expanded(flex: 4, child: Container(color: Colors.blue)),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: const Color.fromARGB(255, 236, 236, 236),
              child: Text(nomeMateria, style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
