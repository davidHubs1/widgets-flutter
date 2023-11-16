import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnack(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final SnackBar snackBar = SnackBar(
      content: const Text('este es un snackbar'),
      elevation: 2,
      backgroundColor: colors.tertiary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(90),
        ),
      ),
      action: SnackBarAction(
        label: 'ok',
        onPressed: () {},
        textColor: colors.surface,
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void snackBarSnack(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Exercitation aliquip cillum tempor laborum culpa qui. Commodo officia incididunt id Lorem anim do sunt aute id magna labore dolor. Commodo occaecat laboris ut officia tempor. Minim aliquip ea pariatur tempor nostrud excepteur excepteur pariatur aute aliqua do. Quis enim irure ea excepteur officia velit quis consequat deserunt nulla mollit.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Snackbars y dialogos',
          style: TextStyle(
            color: colors.onSurface,
            shadows: [
              Shadow(
                color: colors.inverseSurface,
                blurRadius: 20,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () => showAboutDialog(
                      context: context,
                      applicationVersion: '1.0.1',
                      applicationIcon: const Icon(Icons.celebration_outlined),
                      applicationLegalese: 'Content',
                      applicationName: 'Flutter',
                      anchorPoint: const Offset(0, 1),
                      children: [
                        const Text(
                            'Lorem et ex consequat laborum ad pariatur sint consequat consectetur eiusmod aliqua culpa consequat. Culpa proident amet esse non velit consequat ea esse nostrud ut adipisicing mollit. Nulla voluptate fugiat enim commodo tempor anim laboris Lorem incididunt fugiat duis ex nostrud tempor.'),
                      ],
                    ),
                child: const Text('Mostrar Licencias')),
            FilledButton.tonal(
                onPressed: () => snackBarSnack(context),
                child: const Text('Dialogo creado')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnack(context),
        label: const Text('snackButton'),
        icon: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
