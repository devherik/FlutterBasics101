import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

class TranslatePage extends StatefulWidget {
  const TranslatePage({super.key});

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  final _inputBoxTextController = TextEditingController();
  final _outputBoxTextController = TextEditingController();
  bool _translateButtomState = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _inputBoxTextController.addListener(() {
      if (_inputBoxTextController.text.isNotEmpty) {
        setState(() {
          _translateButtomState = true;
        });
      } else {
        setState(() {
          _translateButtomState = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Here we have an simple example where you tipe a sentence and the app returns it translated',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 50),
            inputBoxField(),
            outputBoxField(),
            const SizedBox(height: 50),
            translateButtom(),
          ],
        ),
      ),
    );
  }

  Widget inputBoxField() => TextFormField(
        controller: _inputBoxTextController,
        maxLines: 2,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: const Text(
            'Say something',
            style: TextStyle(
                fontSize: 16, color: global.brightGrey, letterSpacing: 3),
          ),
          fillColor: global.sombreGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          counterStyle: const TextStyle(color: global.naturallyCalm),
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
        ),
      );

  Widget outputBoxField() => TextFormField(
        enabled: false,
        controller: _outputBoxTextController,
        maxLines: 2,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16, color: global.brightGrey, letterSpacing: 3),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          label: const Text(
            'Translated',
            style: TextStyle(
                fontSize: 16, color: global.brightGrey, letterSpacing: 3),
          ),
          fillColor: global.sombreGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(
              color: global.sombreGrey,
            ),
          ),
          counterStyle: const TextStyle(color: global.naturallyCalm),
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, letterSpacing: 3),
        ),
      );

  Widget translateButtom() => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: _translateButtomState ? () {} : null,
        splashColor: global.brightGrey,
        elevation: 2,
        color: global.sombreGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: const Text(
          'Translate',
          style: TextStyle(
              color: global.brightGrey, letterSpacing: 3, fontSize: 16),
        ),
      );
}
