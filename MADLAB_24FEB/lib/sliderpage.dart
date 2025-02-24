import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200; // Initial height of the image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Slider(
              value: _sliderValue,
              min: 50, // Minimum height of the image
              max: 400, // Maximum height of the image
              divisions: ((400 - 50) / 10).toInt(), // Calculate divisions based on step size
              label: _sliderValue.toStringAsFixed(1),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Image Height: ${_sliderValue.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/pikachu.jpg',
              height: _sliderValue, // Use _sliderValue to set the height of the image
              fit: BoxFit.cover, // Ensure the image covers the area without distortion
            ),
          ],
        ),
      ),
    );
  }
}