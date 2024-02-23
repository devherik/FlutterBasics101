import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:basic101/config/app_globals.dart' as global;

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage(global.scaffoldAssetImage),
        //         fit: BoxFit.fill)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  'Bem vindo ao Basic 101, app voltado a testes e aprimoramento.',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: MaterialButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    context.push('/home');
                  },
                  splashColor: Colors.white,
                  elevation: 2,
                  color: global.sombreGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: global.brightGrey,
                        letterSpacing: 3,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
