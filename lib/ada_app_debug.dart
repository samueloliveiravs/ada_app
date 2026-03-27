import 'package:flutter/material.dart';

import 'pages/ada_home.dart';

class AdaAppDebug extends StatelessWidget {
  const AdaAppDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: AdaHome(nome: "a", email: "s",),
    );
  }
}