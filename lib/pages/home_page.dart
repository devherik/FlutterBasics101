import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            global.title,
          ),
          backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Center(
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                setState(() {
                  global.changeTheme();
                });
              },
              splashColor: Colors.white,
              elevation: 2,
              color: global.sombreGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26)),
              child: const Text(
                'Change theme',
                style: TextStyle(
                    color: global.brightGrey, letterSpacing: 3, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
