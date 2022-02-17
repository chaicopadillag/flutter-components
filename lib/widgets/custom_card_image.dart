import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardImage extends StatelessWidget {
  final String imageUrl;
  final String? title;

  const CustomCardImage({Key? key, required this.imageUrl, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading/placeholder.gif'),
            fadeInDuration: const Duration(milliseconds: 300),
            height: 300,
            fit: BoxFit.cover,
          ),
          if (title != null)
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(title ?? ''),
            ),
        ],
      ),
    );
  }
}
