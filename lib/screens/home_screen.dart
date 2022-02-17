import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) {
            final option = AppRoutes.menuOptions[i];
            return ListTile(
              leading: Icon(option.icon, color: AppTheme.primary),
              title: Text(option.title),
              onTap: () => Navigator.pushNamed(context, option.route),
            );
          },
          separatorBuilder: (__, _) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
