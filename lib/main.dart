import 'package:ada_app/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ada_app.dart';
import 'pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(SplashScreen());
  //Verificação de algo
  final prefs = await SharedPreferences.getInstance();
  bool isDark = prefs.getBool('darkMode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeController(isDark: isDark),
      child: AdaApp(),
    ),
  );
}
