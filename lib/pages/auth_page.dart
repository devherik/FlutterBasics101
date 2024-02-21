import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 44),
          child: Center(
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              onPressed: () {
                context.goNamed('home');
              },
              splashColor: Colors.white,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.blueGrey,
                    size: 24,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.blueGrey, letterSpacing: 3, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
