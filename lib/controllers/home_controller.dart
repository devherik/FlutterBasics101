import 'package:flutter/material.dart';

class HomeController {
  var textShowed$ = ValueNotifier<String>('Olá, mundo!');

  void english() => textShowed$.value = 'Hello, world!';
  void spanish() => textShowed$.value = 'Hola, mundo!';
  void french() => textShowed$.value = 'Bonjour, le monde';
  void portuguese() => textShowed$.value = 'Olá, mundo!';
}
