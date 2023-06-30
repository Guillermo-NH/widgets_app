import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDartmodeProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Theme changer'), actions: [
        IconButton(
            onPressed: () {
              ref.read(isDartmodeProvider.notifier).update((state) => !state);
            },
            icon: Icon(isDarkmode
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined))
      ]),
      body: const _ThemeChangeView(),
    );
  }
}

class _ThemeChangeView extends ConsumerWidget {
  const _ThemeChangeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProviders);
    int indexColor = ref.watch(selectedcolorProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: indexColor,
          onChanged: (value) {
            ref.read(selectedcolorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
