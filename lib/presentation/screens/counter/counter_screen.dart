import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_final_xd/presentation/screens/providers/counter_provider.dart';
import 'package:widgets_app_final_xd/presentation/screens/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // aqui estamos pendientes del cambio del provider
    final int providerRef = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            },
            icon: Icon(
              isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$providerRef',
              style: const TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'click${providerRef == 1 || providerRef == -1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              // ref.read(counterProvider.notifier).update((state) => state + 1);
              ref.read(counterProvider.notifier).state++;
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              // ref.read(counterProvider.notifier).update((state) => state + 1);
              ref.read(counterProvider.notifier).state = 0;
            },
            child: const Icon(Icons.refresh_outlined),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              // ref.read(counterProvider.notifier).update((state) => state + 1);
              ref.read(counterProvider.notifier).state--;
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
