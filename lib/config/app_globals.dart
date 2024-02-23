library globals;

import 'dart:ui';

import 'package:flutter/material.dart';

const String title = 'Basic 101';

const brightGrey = Color.fromRGBO(235, 236, 239, 1);
const sombreGrey = Color.fromRGBO(88, 88, 111, 1);
const naturallyCalm = Color.fromRGBO(207, 209, 2018, 1);
const majesticMist = Color.fromRGBO(156, 160, 179, 1);

const scaffoldAssetImage = 'assets/background/basic_background.jpeg';

bool dayTheme = true;
void changeTheme() => dayTheme = !dayTheme;
