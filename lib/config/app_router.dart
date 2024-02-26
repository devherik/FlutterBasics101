import 'package:basic101/pages/auth/auth_page.dart';
import 'package:basic101/pages/auth/newaccount_page.dart';
import 'package:basic101/pages/auth/recovery_page.dart';
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
          routes: <RouteBase>[
            GoRoute(
              path: 'recovery',
              name: 'recovery',
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                child: RecoveryPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            ),
            GoRoute(
              path: 'newaccount',
              name: 'newaccount',
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                child: const NewaccountPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            ),
          ],
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
