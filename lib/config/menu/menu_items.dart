import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuTiems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subtitle: 'Generales y controlador',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars Y diálogos',
    subtitle: 'Snackbars Y diálogos',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'StateFul widget animated',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),
  MenuItem(
    title: 'Ui Controls + Tiles',
    subtitle: 'Controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introducción a la app',
    subtitle: 'Tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subtitle: 'Listas infinitas pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Contador',
    subtitle: 'Contador con riverpod',
    link: '/counter_screen',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Theme changer',
    subtitle: 'Theme Changer con riverpod',
    link: '/theme_changer_screen',
    icon: Icons.color_lens_outlined,
  ),
];
