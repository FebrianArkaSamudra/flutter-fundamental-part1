import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Scaffold")),
      body: const Center(child: Text("Ini adalah body dari Scaffold.")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB ditekan!");
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
