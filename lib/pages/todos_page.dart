import 'package:ada_app/service/api_todos.dart';
import 'package:flutter/material.dart';

class TodosPage extends StatelessWidget {
  TodosPage({super.key});

  final todoService = ApiTodos().getTodos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: todoService,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Text("Ocorreu um erro");
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Text("Não veio dados");
          }

          var listaTodos = snapshot.data!;

          return ListView.builder(
            itemCount: listaTodos.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(listaTodos[i].title),
                leading: Checkbox(
                  value: listaTodos[i].completed,
                  onChanged: (bool) {},
                ),
              );
            },
          );
        },
      ),
    );
  }
}
