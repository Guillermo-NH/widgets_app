import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
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

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equals than ${colorList.length - 1}');

  ThemeData getThema() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
