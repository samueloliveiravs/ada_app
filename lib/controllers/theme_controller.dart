import 'package:ada_app/state/theme_state.dart';
import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  var state = ThemeState(isDark: true);

  void toggleTheme() {
    state = state.copyWith(isDark: !state.isDark);
    notifyListeners();
  }
}

final themeController = ThemeController();
