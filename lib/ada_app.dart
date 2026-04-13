import 'package:ada_app/controllers/theme_controller.dart';
import 'package:ada_app/routes/app_routes.dart';
import 'package:ada_app/routes/routes.dart';
import 'package:flutter/material.dart';

class AdaApp extends StatelessWidget {
  const AdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, _) {
        return MaterialApp(
          initialRoute: AppRoutes.cep,
          routes: Routes.routes,
          theme: themeController.state.isDark
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
