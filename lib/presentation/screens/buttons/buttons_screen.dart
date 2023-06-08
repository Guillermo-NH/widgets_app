import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static String name = 'button_screen';

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Button screen')),
      body: _ButtonsView(colors: colors),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back_ios_new_outlined)),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 20,
        runSpacing: 15,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated Disable')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_sharp),
              label: const Text('Elevated Icon')),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ad_units),
              label: const Text('Filled Icon')),
          OutlinedButton(onPressed: () {}, child: const Text('Outline')),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessible_forward_rounded),
              label: const Text('Outline Icon')),
          TextButton(onPressed: () {}, child: const Text('Text')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessible_forward_outlined),
              label: const Text('Text Icon')),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_tree_rounded)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.r_mobiledata),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary)),
          )
        ],
      ),
    );
  }
}
