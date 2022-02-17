import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListViewAScreen extends StatelessWidget {
  final categories = const [
    'Business',
    'Entertainment',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  const ListViewAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView A'),
      ),
      body: ListView(
        children: [
          ...categories
              .map((animal) => ListTile(
                    title: Text(animal),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primary),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
