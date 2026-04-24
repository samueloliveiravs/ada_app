import 'package:ada_app/controllers/theme_controller.dart';
import 'package:ada_app/service/api_state.dart';
import 'package:ada_app/service/cat_list_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatePage extends StatelessWidget {
  StatePage({super.key});

  final service = ApiState();

  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();

    return ListenableBuilder(
      listenable: service,
      builder: (context, index) {
        Widget body = Container();
        var state = service.state;

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
        } else if (state is EmptyCatListState) {
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
            title: Text("Gerenciamento de Estado"),
            actions: [
              Icon(Icons.light_mode),
              Switch(
                value: themeController.isDark,
                onChanged: (_) {
                  themeController.toggleTheme();
                },
              ),
              Icon(Icons.dark_mode),
            ],
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: body,
        );
      },
    );
  }
}
