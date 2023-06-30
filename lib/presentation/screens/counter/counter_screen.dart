import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});
  static String name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDartmode = ref.watch(isDartmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen RiverPod'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDartmodeProvider.notifier).update((state) => !state);
              },
              icon: Icon(isDartmode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // ref.read(counterProvider.notifier).update((state) => state + 1);
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
