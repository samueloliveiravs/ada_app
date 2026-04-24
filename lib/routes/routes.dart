import 'package:ada_app/pages/ada_home.dart';
import 'package:ada_app/pages/pegar_cep.dart';
import 'package:ada_app/pages/state_page.dart';
import 'package:ada_app/pages/todos_page.dart';
import 'package:ada_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.login: (context) => StatePage(),
    AppRoutes.home: (context) => AdaHome(),
    AppRoutes.cep: (context) => PegarCep(),
    AppRoutes.todos: (context) => TodosPage(),
  };
}
