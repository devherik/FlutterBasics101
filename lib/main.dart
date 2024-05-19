import 'package:basic101/config/app_router.dart';
import 'package:basic101/config/app_theme.dart';
import 'package:basic101/controllers/home_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Basic101());
}

class Basic101 extends StatefulWidget {
  const Basic101({super.key});

  @override
  State<Basic101> createState() => _Basic101State();
}

class _Basic101State extends State<Basic101> {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.day,
      darkTheme: AppTheme.night,
      themeMode: ThemeMode.system,
    );
  }
}
