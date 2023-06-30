import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.greenAccent,
  Colors.blue,
  Colors.red,
  Colors.pink,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.purple,
  Colors.blueGrey,
  Colors.brown,
  Colors.deepOrange,
  Colors.lightGreen,
  Colors.lime,
  Colors.transparent,
  Colors.indigo,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkode;

  AppTheme({this.selectedColor = 0, this.isDarkode = false})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equals than ${colorList.length - 1}');

  ThemeData getThema() => ThemeData(
      useMaterial3: true,
      brightness: isDarkode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
