import 'package:flutter/material.dart';

class add_image extends StatefulWidget {
  const add_image({super.key});

  @override
  State<add_image> createState() => _add_imageState();
}

class _add_imageState extends State<add_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Colors.orange[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Colors.blue[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Colors.pink[200],
            ),
          ]),
    );
  }
}
