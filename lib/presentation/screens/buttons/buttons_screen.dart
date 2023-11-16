import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'buttons Screens',
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
      body: const _ButtonsEvery(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: false,
        tooltip: 'floatingACtionButton',
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

class _ButtonsEvery extends StatelessWidget {
  const _ButtonsEvery();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevationButton'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('ElevationButton'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.celebration),
              label: const Text('elevated'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.celebration_outlined),
              label: const Text('FilledIcon'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('filledTonal'),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: const Icon(Icons.celebration_outlined),
              label: const Text('filled '),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('outlined'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.celebration_rounded),
              label: const Text('outlineIcon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.celebration_rounded),
              label: const Text('TextIcon'),
            ),
            const _CustomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.celebration_rounded),
            ),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.celebration_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'CustomButton',
              style: TextStyle(
                color: colors.surface,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
