import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card View'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            CustomCardSimple(),
            SizedBox(height: 8),
            CustomCardImage(
              imageUrl: 'http://placeimg.com/640/480/nature',
            ),
            SizedBox(height: 8),
            CustomCardImage(
              imageUrl: 'http://placeimg.com/640/480/city',
            ),
            SizedBox(height: 8),
            CustomCardImage(
              imageUrl: 'http://placeimg.com/640/480/abstract',
              title: 'Ushplash Image',
            ),
          ],
        ));
  }
}
