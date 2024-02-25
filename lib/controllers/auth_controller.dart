import 'package:flutter/material.dart';

class AuthController {
  var isLoading$ = ValueNotifier<bool>(false);
  var title$ = ValueNotifier<String>('Hello, user!');
  var progressBar$ = ValueNotifier<List<Widget>>([]);

  addWidget(Widget child) => progressBar$.value.add(child);
  updateProgressBar(List<Widget> list) => progressBar$.value = list;
  setName(String value) => title$.value = value;
}
