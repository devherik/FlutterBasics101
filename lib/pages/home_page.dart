import 'package:basic101/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    'Bem vindo ao Basic 101, app voltado a testes e aprimoramento.',
                    style: TextStyle(
                        fontSize: 38,
                        letterSpacing: 0,
                        leadingDistribution:
                            TextLeadingDistribution.proportional),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 12),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      context.push('/home/valuenotifier');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                    child: const Text(
                      'Value Notifier Simple Sample',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: global.brightGrey,
                        letterSpacing: 3,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 12),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      context.push('/home/auth');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                    child: const Text(
                      'Form Authentication Simple Sample',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: global.brightGrey,
                        letterSpacing: 3,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
