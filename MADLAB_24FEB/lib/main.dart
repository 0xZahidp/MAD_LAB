import 'package:flutter/material.dart';
import 'sliderpage.dart';
import 'list_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interactive Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _sliderValue = 20.0;

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  String _inputText = "";
  String _hintText = "Enter your name";

  void _updateInputText() {
    setState(() {
      _inputText = _controller.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          _hintText = "";
        } else if (_controller.text.isEmpty) {
          _hintText = "Enter your name";
        }
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hum Tumhare hain kon')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/image1.jpg', height: 100),
                Image.asset('assets/images/image2.jpg', height: 100),
              ],
            ),
            SizedBox(height: 10), // Gap between images and text field
            TextField(
              controller: _controller,
              focusNode: _focusNode,
              decoration: InputDecoration(hintText: _hintText),
              onChanged: (text) {
                _updateInputText();
              },
            ),
            SizedBox(height: 30),
            Text(
              'Hello, $_inputText!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderPage()),
                );
              },
              child: Text('Go to Slider Page'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListImagePage()),
                );
              },
              child: Text('Go to List Image Page'),
            ),
          ],
        ),
      ),
    );
  }
}
