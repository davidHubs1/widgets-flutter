import 'package:go_router/go_router.dart';
import 'package:widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets/presentation/screens/cards/card_screen.dart';

import '../../presentation/screens/animated/animated_screen.dart';
import '../../presentation/screens/appTutorial/app_tuttorial_screen.dart';
import '../../presentation/screens/counter/counter_screen.dart';
import '../../presentation/screens/home/home_screen.dart';
import '../../presentation/screens/infinite_scroll/infinite_scroll_screen.dart';
import '../../presentation/screens/iu_controlls/iu_controll_screen.dart';
import '../../presentation/screens/progres/progres_screen.dart';
import '../../presentation/screens/snackbar/snackbar_screen.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/card',
      name: CardScreens.name,
      builder: (context, state) => const CardScreens(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackBarScreen.name,
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animater',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/UI-controlls',
      name: UiScreen.name,
      builder: (context, state) => const UiScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTuttorialScreen.name,
      builder: (context, state) => const AppTuttorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) => const CounterScreen(),
    ),
  ],
);
