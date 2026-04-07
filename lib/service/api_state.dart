import 'package:ada_app/service/cat_api.dart';
import 'package:ada_app/service/cat_list_state.dart';
import 'package:flutter/material.dart';

class ApiState extends ChangeNotifier {
  final service = CatApi();

  CatListState state = EmptyCatListState();

  void getData() async {
    state = LoadinCatListState();
    notifyListeners();

    try {
      final resposta = await service.fetchData();
      state = GettedCatListState(dados: resposta);
      notifyListeners();
    } catch (e) {
      state = ErrorCatListState(erro: e.toString());
      notifyListeners();
    } finally {
      state = EmptyCatListState();
      notifyListeners();
    }
  }
}
