import 'package:flutter/material.dart';

class InputSelectionDemo extends StatelessWidget {
  const InputSelectionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input dan Selection")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: "Masukkan nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            CheckboxTile(),
          ],
        ),
      ),
    );
  }
}

class CheckboxTile extends StatefulWidget {
  const CheckboxTile({super.key});

  @override
  State<CheckboxTile> createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text("Saya setuju"),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value ?? false;
        });
      },
    );
  }
}
