import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
            child: AnimatedContainer(
          decoration: BoxDecoration(
              color: selected ? Colors.red : Colors.blue,
              borderRadius: selected
                  ? BorderRadius.circular(20)
                  : BorderRadius.circular(40)),
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          curve: Curves.easeInCubic,
          width: selected ? 200 : 100,
          height: selected ? 100 : 200,
          duration: const Duration(seconds: 1),
          child: const Center(child: FlutterLogo(size: 50)),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
