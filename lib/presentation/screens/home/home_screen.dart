import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../config/menu_itemes.dart';
import '../../widgets/side_menu.dart';
import '../providers/theme_provider.dart';

class HomeScreen extends ConsumerWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      //tiene la referencia del estado actual
      key: scaffoldKey,
      appBar: AppBar(
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
        title: const Text(
          'Widgets - Flutter',
        ),
      ),
      body: const _HomeView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getMenuItems.length,
      itemBuilder: (context, index) {
        final menuItems = getMenuItems[index];

        return _CustomMenuItems(menuItems: menuItems);
      },
    );
  }
}

class _CustomMenuItems extends StatelessWidget {
  const _CustomMenuItems({
    required this.menuItems,
  });
  final MenuItems menuItems;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      onTap: () {
        context.push(menuItems.link);
      },
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subtitle),
      trailing: Icon(
        menuItems.trailing,
        color: colors.primary,
        shadows: [
          Shadow(
            color: colors.secondary,
            blurRadius: 10,
          ),
        ],
      ),
      leading: Icon(
        menuItems.icon,
        color: colors.primary,
        shadows: [
          BoxShadow(
            color: colors.secondary,
            blurRadius: 30,
          ),
        ],
      ),
    );
  }
}
