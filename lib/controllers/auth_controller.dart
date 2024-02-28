import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

class AuthController {
  var isLoading$ = ValueNotifier<bool>(false);
  var titleValueNotifTest$ = ValueNotifier<String>('Hello, user!');
  var progressBar$ = ValueNotifier<List<Widget>>([]);
  var validatorsWidgets$ = ValueNotifier<List<Widget>>([]);
  final validatorsText = <String>[
    '  • 1 uppercase letter',
    '  • 1 special character',
    '  • 8-16 characters',
  ];
  final List<RegExp> _validators = [
    RegExp(r'[A-Z]'),
    RegExp(r'[!@#\\$%^&*(),.?":{}|<>]'),
    RegExp(r'^.{8,32}$'),
  ];

  addWidget(Widget child) => progressBar$.value.add(child);
  updateProgressBar(List<Widget> list) => progressBar$.value = list;
  setName(String value) => titleValueNotifTest$.value = value;

  bool passwordCheckValidators(String value) {
    var list = <Widget>[];
    int count = 0;
    for (var i = 0; i < _validators.length; i++) {
      if (_validators[i].hasMatch(value)) {
        list.add(
          Text(validatorsText[i].toString(),
              style: const TextStyle(fontSize: 10, color: global.green)),
        );
        count++;
      } else {
        list.add(Text(validatorsText[i].toString(),
            style: const TextStyle(fontSize: 10, color: global.majesticMist)));
      }
    }
    validatorsWidgets$.value = list;
    bool isStrong = false;
    if (count == 3) {
      isStrong = true;
    }
    return isStrong;
  }
}
