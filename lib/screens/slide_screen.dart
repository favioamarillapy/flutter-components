import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _valueSlider = 200;
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Screen"),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            activeColor: AppTheme.primaryColor,
            value: _valueSlider,
            onChanged: _enabled
                ? (value) {
                    _valueSlider = value;
                    setState(() {});
                  }
                : null,
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text("Enable Slider"),
            value: _enabled,
            onChanged: (value) {
              _enabled = value ?? true;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          Image(
            width: _valueSlider,
            fit: BoxFit.contain,
            image: const NetworkImage(
              "https://clubolimpia.com.py/wp-content/uploads/2018/01/clubolimpia@2x.png",
            ),
          )
        ],
      ),
    );
  }
}
