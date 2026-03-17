import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderDemo(),
    );
  }
}

// Main screen (Stateful because value changes)
class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double brightness = 50; // initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brightness Control"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Box that changes brightness
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.yellow.withOpacity(brightness / 100),
            child: Center(
              child: Text(
                "${brightness.toInt()}%",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),

          // Slider widget
          Slider(
            value: brightness,
            min: 0,
            max: 100,
            activeColor: Colors.orange,
            onChanged: (value) {
              setState(() {
                brightness = value;
              });
            },
          ),
        ],
      ),
    );
  }
}