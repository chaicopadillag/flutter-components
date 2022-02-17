import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: AppTheme.primary.withOpacity(.2),
              maxRadius: 25,
              backgroundImage:
                  const NetworkImage('http://placeimg.com/480/480/people'),
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: AppTheme.primary.withOpacity(.5),
          maxRadius: 100,
          backgroundImage:
              const NetworkImage('http://placeimg.com/480/480/people'),
        ),
      ),
    );
  }
}
