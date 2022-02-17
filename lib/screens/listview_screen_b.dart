import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListViewBScreen extends StatelessWidget {
  final categories = const [
    'Business',
    'Entertainment',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  const ListViewBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView B'),
      ),
      body: ListView.separated(
        itemCount: categories.length,
        itemBuilder: (context, index) => ListTile(
            title: Text(categories[index]),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: AppTheme.primary),
            onTap: () {}),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
