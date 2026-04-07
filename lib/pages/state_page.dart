import 'package:ada_app/service/api_state.dart';
import 'package:ada_app/service/cat_api.dart';
import 'package:ada_app/service/cat_list_state.dart';
import 'package:flutter/material.dart';

class StatePage extends StatelessWidget {
  StatePage({super.key});

  final service = ApiState();

  @override
  Widget build(BuildContext context) {
    var state = service.state;
    return ListenableBuilder(
      listenable: service,
      builder: (context, index) {
        Widget body = Container();

        if (state is LoadinCatListState) {
          body = Center(child: CircularProgressIndicator());
        } else if (state is ErrorCatListState) {
          body = Center(
            child: Column(
              children: [
                Text(state.erro),
                ElevatedButton(
                  onPressed: service.getData,
                  child: Text("Tentar Novamente"),
                ),
              ],
            ),
          );
        } else if (state is GettedCatListState) {
          body = Center(
            child: ElevatedButton(
              onPressed: service.getData,
              child: Text("Buscar Dados"),
            ),
          );
        } else if (state is GettedCatListState) {
          body = ListView.builder(
            itemCount: state.dados.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(state.dados[index]));
            },
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: body,
        );
      },
    );
  }
}
