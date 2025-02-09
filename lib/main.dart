import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Zahid's APP"),
          centerTitle: true,
          backgroundColor: Color(0xFF5CBA5C), // Setting the hex color
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Center(child: Text('Hello, Zahid!')), // Just for UI balance
      ),
    );
  }
}
