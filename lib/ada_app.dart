import 'package:ada_app/controllers/theme_controller.dart';
import 'package:ada_app/routes/app_routes.dart';
import 'package:ada_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaApp extends StatelessWidget {
  const AdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();

    return MaterialApp(
      initialRoute: AppRoutes.media,
      routes: Routes.routes,
      theme: themeController.isDark ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}
