import 'package:ada_app/pages/ada_home.dart';
import 'package:ada_app/pages/login.dart';
import 'package:ada_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AdaApp extends StatelessWidget {
  const AdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => Login(),
        AppRoutes.home: (context) => AdaHome()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.fugazOneTextTheme(),
      ),
    );
  }
}
