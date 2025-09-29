import 'package:flutter/material.dart';
class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text("Hello, world!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FAB ditekan!');
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
