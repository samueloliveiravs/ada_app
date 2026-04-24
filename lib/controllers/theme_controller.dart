import 'package:ada_app/state/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  static const _key = "darkMode";

  bool isDark;

  ThemeController({required this.isDark});

  Future<void> toggleTheme() async {
    isDark = !isDark;

    final prefs =  await SharedPreferences.getInstance();
    await prefs.setBool(_key, isDark);

    notifyListeners();
  }
}
