import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnacbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Ok!',
          onPressed: () {},
        ),
        content: const Text('Hola desde mi snackbar'));

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text(
            'Minim in laboris amet fugiat duis ex ipsum Lorem mollit. Pariatur voluptate laborum ad irure sit reprehenderit minim enim veniam officia fugiat minim deserunt ea. Deserunt nisi id duis adipisicing ea minim. Occaecat cupidatat ullamco cupidatat Lorem ut. Laborum ea excepteur excepteur laboris enim adipisicing laborum.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar and dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Minim ullamco esse reprehenderit reprehenderit proident et sint duis aliquip dolore. Ut irure ut eu deserunt deserunt consequat pariatur dolore eu incididunt dolor qui magna cupidatat. Lorem duis pariatur deserunt laborum occaecat. Cupidatat enim commodo ullamco sit culpa culpa excepteur dolore. Aute veniam proident ex duis exercitation. Do elit anim incididunt non officia ad nulla sunt ut.'),
                  ]);
                },
                child: const Text('Licencias usadas')),
            const SizedBox(height: 10),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnacbar(context),
          label: const Text('Show SnackBar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
