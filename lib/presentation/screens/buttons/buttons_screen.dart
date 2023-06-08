import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button screen')),
      body: Stack(
        children: [
          SizedBox.expand(child: Image.asset('assets/image/03.jpeg')),
          const Positioned(
              child: Center(
                  child: Text(
            'Que tengas un lindo dia 🌼❤️☀️🌙🌻 ',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )))
        ],
      ),
    );
  }
}
