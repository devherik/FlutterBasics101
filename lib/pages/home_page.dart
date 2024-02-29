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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      // drawer: homeDrawer(),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .15),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    'Be welcome to Basics101, an app to improve my Flutter skills and to become awesome at it.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
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
                    child: basicMaterialButtom(
                        '/home/valuenotifier', 'ValueNotifier Sample')),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: basicMaterialButtom(
                        '/home/auth', 'Account Login Sample')),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: basicMaterialButtom(
                        '/home/translate', 'Translate Text Sample')),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: basicMaterialButtom(
                        '/home/translate', 'Gemini Integration Sample')),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: basicMaterialButtom(
                        '/home/dataanalytics', 'Data Analytics Sample')),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Divider(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget basicMaterialButtom(String path, String label) => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          context.push(path);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Wrap(
          children: [
            Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: global.brightGrey,
                  letterSpacing: 3,
                  fontSize: 16,
                ),
              ),
            ),
            const Center(
              child: Icon(
                Icons.arrow_forward,
                color: global.brightGrey,
              ),
            )
          ],
        ),
      );
  Widget homeDrawer() => Drawer(
        backgroundColor: global.sombreGrey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black54),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: global.green),
                  ),
                ]),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Hello'),
              )
            ],
          ),
        ),
      );
}
