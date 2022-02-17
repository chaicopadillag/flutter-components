import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardSimple extends StatelessWidget {
  const CustomCardSimple({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.person, color: AppTheme.primary),
            title: Text('Account'),
            subtitle: Text(
                'Dolores aperiam sed sunt occaecati fuga pariatur et at. Minus quia minima temporibus possimus explicabo velit repudiandae.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('DISMISS'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
