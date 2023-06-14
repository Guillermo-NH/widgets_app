import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          const Text('Circular progress indicator'),
          const SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: colors.outline,
          ),
          const Text('Circular y linear progress indicator controlado'),
          const SizedBox(
            height: 10,
          ),
          const _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 50),
        (value) {
          return (value * 2) / 100;
        },
      ).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: LinearProgressIndicator(
                value: progressValue,
                backgroundColor: colors.onTertiary,
              ))
            ],
          ),
        );
      },
    );
  }
}
