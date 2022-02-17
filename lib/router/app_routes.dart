import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screen.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   title: 'Home',
    //   icon: Icons.home,
    //   route: 'home',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      title: 'List View A',
      icon: Icons.list,
      route: 'listviewa',
      screen: const ListViewAScreen(),
    ),
    MenuOption(
      title: 'List View B',
      icon: Icons.list_alt,
      route: 'listviewb',
      screen: const ListViewBScreen(),
    ),
    MenuOption(
      title: 'Alert',
      icon: Icons.warning,
      route: 'alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      title: 'Card',
      icon: Icons.calendar_view_day_rounded,
      route: 'card',
      screen: const CardScreen(),
    ),
    MenuOption(
      title: 'Avatar Circle',
      icon: Icons.person_pin,
      route: 'avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      title: 'Animation',
      icon: Icons.animation,
      route: 'animation',
      screen: const AnimateScreen(),
    ),
    MenuOption(
      title: 'Input text',
      icon: Icons.text_fields,
      route: 'input',
      screen: const InputScreen(),
    ),
    MenuOption(
      title: 'Sliders & Checks',
      icon: Icons.slideshow,
      route: 'slider',
      screen: const SliderScreen(),
    ),
    MenuOption(
      title: 'List View Builder',
      icon: Icons.format_list_numbered_outlined,
      route: 'listviewbuilder',
      screen: const ListViewBuilder(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes() {
    final Map<String, Widget Function(BuildContext)> routes = {
      'home': (BuildContext context) => const HomeScreen(),
    };

    for (final option in menuOptions) {
      routes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return routes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listviewa': (context) => const ListViewAScreen(),
  //   'listviewb': (context) => const ListViewBScreen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(setting) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
