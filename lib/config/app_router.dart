import 'package:basic101/pages/auth_page.dart';
import 'package:basic101/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        child: const HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/auth',
      name: 'auth',
      builder: (context, state) => const AuthPage(),
    )
  ], initialLocation: '/auth');
}
