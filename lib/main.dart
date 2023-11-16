import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_final_xd/config/router/direction_router.dart';
import 'package:widgets_app_final_xd/config/theme/app_theme.dart';
import 'package:widgets_app_final_xd/presentation/screens/providers/theme_provider.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isdarkmods = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(colorSelect: 2, isDark: isdarkmods).getTheme(),
      title: 'All Widgets App',
    );
  }
}
