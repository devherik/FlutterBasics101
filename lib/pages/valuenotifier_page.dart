import 'package:basic101/controllers/valuenotifier_controller.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class ValuenotifierPage extends StatefulWidget {
  const ValuenotifierPage({super.key});

  @override
  State<ValuenotifierPage> createState() => _ValuenotifierPageState();
}

class _ValuenotifierPageState extends State<ValuenotifierPage> {
  final controller = ValuenotifierController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              const String code = """
import 'package:basic101/controllers/valuenotifier_controller.dart';
import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;
import 'package:go_router/go_router.dart';

class ValuenotifierPage extends StatefulWidget {
  const ValuenotifierPage({super.key});

  @override
  State<ValuenotifierPage> createState() => _ValuenotifierPageState();
}

class _ValuenotifierPageState extends State<ValuenotifierPage> {
  final controller = ValuenotifierController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ValueListenableBuilder(
          valueListenable: controller.textShowed\$,
          builder: (context, value, child) => Text(
            value,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              const String code = '';
              context.push('/codeview', extra: code);
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Icon(
              Icons.code,
              color: global.brightGrey,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
            const SizedBox(height: 15),
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
            const SizedBox(height: 15),
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
            const SizedBox(height: 15),
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
    );
  }
}

import 'package:flutter/material.dart';

class ValuenotifierController {
  var textShowed\$ = ValueNotifier<String>('Olá, mundo!');

  void english() => textShowed\$.value = 'Hello, world!';
  void spanish() => textShowed\$.value = 'Hola, mundo!';
  void french() => textShowed\$.value = 'Bonjour, le monde!';
  void portuguese() => textShowed\$.value = 'Olá, mundo!';
}
              """;
              context.push('/codeview', extra: code);
            },
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconTheme(
              data: Theme.of(context).iconTheme,
              child: const Icon(
                Icons.code,
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34),
              child: ValueListenableBuilder(
                valueListenable: controller.textShowed$,
                builder: (context, value, child) => Text(
                  value,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 15),
            ElevatedButtonTheme(
              data: Theme.of(context).elevatedButtonTheme,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: controller.english,
                  child: Text(
                    'English',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButtonTheme(
              data: Theme.of(context).elevatedButtonTheme,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: controller.spanish,
                  child: Text(
                    'Spanish',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButtonTheme(
              data: Theme.of(context).elevatedButtonTheme,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: controller.french,
                  child: Text(
                    'French',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButtonTheme(
              data: Theme.of(context).elevatedButtonTheme,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: controller.portuguese,
                  child: Text(
                    'Portuguese',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
