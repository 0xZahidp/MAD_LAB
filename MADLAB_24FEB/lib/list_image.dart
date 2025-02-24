import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  TextEditingController _controller = TextEditingController();

  String _inputText = "";

  void _updateInputText() {
    setState(() {
      _inputText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Flutter Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/pikachu.jpg', height: 250),
            SizedBox(height: 10), //image and text gap
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Naam den'),
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

            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: _sliderValue.toStringAsFixed(1),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            SizedBox(height: 20),

            Text(
              'Slider Value: ${_sliderValue.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

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

class ListImagePage extends StatefulWidget {
  @override
  _ListImagePageState createState() => _ListImagePageState();
}

class _ListImagePageState extends State<ListImagePage> {
  List<String> _listItems = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  TextEditingController _itemController = TextEditingController();

  void _addItem() {
    if (_itemController.text.isNotEmpty) {
      setState(() {
        _listItems.add(_itemController.text);
        _itemController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Image Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _itemController,
              decoration: InputDecoration(labelText: 'Enter item to add'),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: _addItem,
              child: Text('Add Item'),
            ),
            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: _listItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_listItems[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          _listItems.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            Image.asset('assets/images/pikachu.jpg', height: 200),
          ],
        ),
      ),
    );
  }
}