import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  final IconData trailing;

  const MenuItems({
    required this.trailing,
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const getMenuItems = <MenuItems>[
  MenuItems(
    trailing: Icons.arrow_forward_ios_outlined,
    title: 'Riverpod Counter',
    subtitle: 'Introducción a Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItems(
    title: 'buttons',
    subtitle: 'every buttons of the flutter with material 3',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    trailing: Icons.arrow_forward_ios,
  ),
  MenuItems(
    title: 'card',
    subtitle: 'every card ',
    link: '/card',
    icon: Icons.credit_card,
    trailing: Icons.arrow_forward_ios,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generales Controllados',
    link: '/progress',
    icon: Icons.refresh_rounded,
    trailing: Icons.arrow_forward_ios,
  ),
  MenuItems(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
    trailing: Icons.arrow_forward_ios,
  ),
  MenuItems(
    trailing: Icons.arrow_forward_ios_outlined,
    title: 'Animate container flutter',
    subtitle: 'statefull widget animado',
    link: '/animater',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItems(
    trailing: Icons.arrow_forward_ios_outlined,
    title: 'Ui controlls + Tiles',
    subtitle: 'Una serie de controller Flutter',
    link: '/UI-controlls',
    icon: Icons.car_rental_rounded,
  ),
  MenuItems(
    trailing: Icons.arrow_forward_ios_outlined,
    title: 'Introducción a la aplicación',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItems(
    trailing: Icons.arrow_forward_ios_outlined,
    title: 'Infinite Scroll',
    subtitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
];
