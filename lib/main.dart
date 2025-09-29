import 'package:flutter/material.dart';

// Import file langkah
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/input_selection_widget.dart';
import 'basic_widgets/date_time_picker.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Flutter',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeMenuPage(),
    );
  }
}

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Praktikum No.3 - Febrian Arka Samudra'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMenuButton(
                context,
                label: 'Scaffold Widget',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ScaffoldDemo()));
                },
              ),
              _buildMenuButton(
                context,
                label: 'Dialog Widget',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DialogDemoApp()));
                },
              ),
              _buildMenuButton(
                context,
                label: 'Input & Selection',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const InputSelectionDemo()));
                },
              ),
              _buildMenuButton(
                context,
                label: 'Date & Time Picker',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const DateTimePickerDemo()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context,
      {required String label, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}