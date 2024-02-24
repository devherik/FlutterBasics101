import 'package:flutter/material.dart';

class AuthController {
  var isLoading$ = ValueNotifier<bool>(false);
  var title$ = ValueNotifier<String>('Hello, user!');
  setName(String value) => title$.value = value;
}
