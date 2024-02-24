import 'package:basic101/pages/auth_page.dart';
import 'package:basic101/pages/home_page.dart';
import 'package:basic101/pages/valuenotifier_page.dart';
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
      routes: <RouteBase>[
        GoRoute(
          path: 'auth',
          name: 'auth',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            child: const AuthPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        ),
        GoRoute(
          path: 'valuenotifier',
          name: 'valuenotifier',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            child: const ValuenotifierPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        )
      ],
    ),
  ], initialLocation: '/home');
}
