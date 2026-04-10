import 'package:ada_app/service/cat_api.dart';
import 'package:ada_app/service/cat_list_state.dart';
import 'package:flutter/material.dart';

class ApiState extends ChangeNotifier {
  final service = CatApi();

  CatListState state = EmptyCatListState();

  void getData() async {
    print("object");
    state = LoadinCatListState();
    print(state);
    notifyListeners();

    try {
      final resposta = await service.fetchData();
      state = GettedCatListState(dados: resposta);
      print("Resposta");
      notifyListeners();
    } catch (e) {
      state = ErrorCatListState(erro: e.toString());
      notifyListeners();
    }
  }
}
