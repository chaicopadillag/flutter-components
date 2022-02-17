import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _isSliderDisabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            onChanged: _isSliderDisabled
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          CheckboxListTile(
              title: const Text('Disable slider'),
              activeColor: AppTheme.primary,
              value: _isSliderDisabled,
              onChanged: (value) {
                setState(() {
                  _isSliderDisabled = value ?? true;
                });
              }),
          SwitchListTile.adaptive(
              title: const Text('Disable slider'),
              activeColor: AppTheme.primary,
              value: _isSliderDisabled,
              onChanged: (value) {
                setState(() {
                  _isSliderDisabled = value;
                });
              }),
          const AboutListTile(
            applicationIcon: Icon(Icons.info),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://static.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest/scale-to-width-down/1000?cb=20180410032118&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
