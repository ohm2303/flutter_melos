import 'dart:ui';

import 'package:flutter/material.dart';

abstract class IThemeColor {
  late Color backgroundPrimary;
  late Color text;
  late Color backgroundSecondary;
  late Color selectedItem;
  late Color unSelectedItem;
}

class LightTheme implements IThemeColor {
  @override
  Color backgroundPrimary = Colors.white30;

  @override
  Color backgroundSecondary = Colors.pink;

  @override
  Color selectedItem = Colors.pink;

  @override
  Color text = Colors.lightBlueAccent;

  @override
  Color unSelectedItem = Colors.deepOrange;

}

class DarkTheme implements IThemeColor {
  @override
  Color backgroundPrimary = Colors.black54;

  @override
  Color backgroundSecondary = Colors.blue;

  @override
  Color selectedItem = Colors.teal;

  @override
  Color text = Colors.purple;

  @override
  Color unSelectedItem = Colors.blueGrey;

}

final lightTheme = LightTheme();
final darkTheme = DarkTheme();