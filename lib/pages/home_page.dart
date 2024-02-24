import 'package:basic101/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

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
      appBar: AppBar(
          centerTitle: true,
          title: ValueListenableBuilder(
            valueListenable: controller.textShowed$,
            builder: (context, value, child) => Text(
              value,
            ),
          ),
          backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: controller.english,
                splashColor: global.brightGrey,
                elevation: 2,
                color: global.sombreGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                child: const Text(
                  'English',
                  style: TextStyle(
                      color: global.brightGrey, letterSpacing: 3, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              MaterialButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: controller.spanish,
                splashColor: global.brightGrey,
                elevation: 2,
                color: global.sombreGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                child: const Text(
                  'Spanish',
                  style: TextStyle(
                      color: global.brightGrey, letterSpacing: 3, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              MaterialButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: controller.french,
                splashColor: global.brightGrey,
                elevation: 2,
                color: global.sombreGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                child: const Text(
                  'French',
                  style: TextStyle(
                      color: global.brightGrey, letterSpacing: 3, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(),
              ),
              MaterialButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                minWidth: MediaQuery.of(context).size.width,
                onPressed: controller.portuguese,
                splashColor: global.brightGrey,
                elevation: 2,
                color: global.sombreGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                child: const Text(
                  'Portuguese',
                  style: TextStyle(
                      color: global.brightGrey, letterSpacing: 3, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
