import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final String title;
  final IconData icon;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.title,
      required this.icon,
      required this.screen});
}
