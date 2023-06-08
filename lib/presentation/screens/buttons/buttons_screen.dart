import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static String name = 'button_screen';

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Button screen')),
      body: Stack(
        children: [
          Positioned(
              child: Center(
                  child: Text(
            'Hola mundo',
            style: TextStyle(color: colors.primary, fontSize: 22),
          )))
        ],
      ),
    );
  }
}
