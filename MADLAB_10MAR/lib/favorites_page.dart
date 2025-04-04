import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<String> items = [
    'Flutter',
    'Dart',
    'PHP',
    'Laravel',
    'Python',
    'Cricket',
    'Football',
    'Bangladesh',
    'India',
    'Pakistan',
    'Sri Lanka',
    'Nepal',
    'Bhutan',
    'Maldives',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorite Topics')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                items[index],
                style: const TextStyle(fontSize: 24),
              ),
            );
          },
        ),
      ),
    );
  }
}
