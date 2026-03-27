import 'package:flutter/material.dart';

import 'pages/ada_home.dart';

class AdaAppClean extends StatelessWidget {
  const AdaAppClean({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: AdaHome(nome: "a", email: "s",),
    );
  }
}