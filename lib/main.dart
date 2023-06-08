import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getThema(),
      home: const HomeScreen(),
    );
  }
}
