import 'package:ada_app/controllers/theme_controller.dart';
import 'package:ada_app/pages/ada_home.dart';
import 'package:ada_app/pages/state_page.dart';
import 'package:ada_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdaApp extends StatelessWidget {
  const AdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeContoller = ThemeController();

    return AnimatedBuilder(
      animation: themeContoller,
      builder: (context, _) {
        return AnimatedTheme(
          duration: Duration(microseconds: 400),
          data: themeContoller.state.isDark
              ? ThemeData.dark()
              : ThemeData.light(),
          child: MaterialApp(
            initialRoute: AppRoutes.login,
            routes: {
              AppRoutes.login: (context) => StatePage(),
              AppRoutes.home: (context) => AdaHome(),
            },
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
