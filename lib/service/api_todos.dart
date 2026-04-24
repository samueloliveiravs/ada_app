import 'dart:convert';

import 'package:ada_app/models/todo.dart';
import 'package:http/http.dart' as http;

class ApiTodos {
  Future<List<Todo>> getTodos() async {
    List<Todo> date = [];
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/todos");

    try {
      final response = await http.get(
        url,
        headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp'},
      );

      List listaTodos = jsonDecode(response.body);

      if (response.statusCode == 200) {
        date = listaTodos.map((todo) => Todo.fromJson(todo)).toList();
        print(date);
        return date;
      }
    } catch (e) {
      print("Erro: " + e.toString());
    }

    return date;
  }
}
