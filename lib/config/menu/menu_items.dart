import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Counter',
      subTitle: 'Contador numerico',
      link: '/counter_screen',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Uncontenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogs',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.info_outlined),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'CheckBox, Radios y otros Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui_controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/app_tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite Scroll and Pull to Refresh',
      subTitle: 'Listas infinitas y un refresh ',
      link: '/infinite_scroll',
      icon: Icons.change_circle_outlined),
  MenuItem(
      title: 'Cambiar el tema',
      subTitle: 'Cambiar el tema de la aplicacion ',
      link: '/theme_changer',
      icon: Icons.color_lens_outlined),
];
