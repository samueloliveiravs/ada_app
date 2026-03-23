import 'package:flutter/material.dart';

import 'ada_app.dart';
import 'pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(SplashScreen());
  //Verificação de algo
  //await Future.delayed(Duration(seconds: 10));

  runApp(AdaApp());
}
