import 'package:basic101/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final controller = HomeController();
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animationController.forward();
  }

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
                global.largeSpacer,
                Text(
                  'Basics 101',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                global.largeSpacer,
                Text(
                  'Be welcome to Basics101, an app to improve my Flutter skills and to become awesome at it.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                global.largeSpacer,
                const Divider(),
                global.smallSpacer,
                basicMaterialButtom(
                    '/home/valuenotifier', 'ValueNotifier Sample'),
                global.smallSpacer,
                basicMaterialButtom('/home/auth', 'Account Login Sample'),
                global.smallSpacer,
                basicMaterialButtom(
                    '/home/animator', 'Animator Flutter Sample'),
                global.mediumSpacer,
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget basicMaterialButtom(String path, String label) => ElevatedButtonTheme(
        data: Theme.of(context).elevatedButtonTheme,
        child: ElevatedButton(
          onPressed: () {
            context.push(path);
          },
          child: Wrap(
            children: [
              Center(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const Center(
                child: Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      );

  Widget basicMaterialButtomAnimated(String path, String label) {
    return GestureDetector(
      onTap: () => context.push(path),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        height: 60,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 0.5,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 0.5,
            )
          ],
        ),
        child: Center(
          child: Wrap(
            children: [
              Center(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const Center(
                child: Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ),
    );
  }

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
                    margin: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: global.green),
                  ),
                ]),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text('Hello'),
              )
            ],
          ),
        ),
      );

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
