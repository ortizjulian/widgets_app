import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      body: const _SnackbarsView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
      ),
    );
  }
}

class _SnackbarsView extends StatelessWidget {
  const _SnackbarsView();

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('¿Estás seguro?'),
          content: const Text(
            'Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola HolaHola Hola Hola Hola Hola Hola Hola Hola Hola',
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text(
                    'Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola Hola HolaHola Hola Hola Hola Hola Hola Hola Hola Hola',
                  ),
                ],
              );
            },
            child: const Text('Licensias usadas'),
          ),
          FilledButton.tonal(
            onPressed: () {
              openDialog(context);
            },
            child: const Text('Mostrar diálogo'),
          ),
        ],
      ),
    );
  }
}
