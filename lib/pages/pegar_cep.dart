import 'dart:convert';

import 'package:ada_app/models/endereco.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PegarCep extends StatefulWidget {
  const PegarCep({super.key});

  @override
  State<PegarCep> createState() => _PegarCepState();
}

class _PegarCepState extends State<PegarCep> {
  Future<void> getCep() async {
    Uri url = Uri.parse("https://viacep.com.br/ws/01001200/json/");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final dados = jsonDecode(response.body);
        final endereco = Endereco.fromJson(dados);
      } else {
        throw Exception("Erro na requisição: ${response.statusCode}");
      }
    } catch (e) {
      print("Erro de conexão: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("API Rest"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: getCep, child: Text("Carregar dados")),
      ),
    );
  }
}
