import 'package:flutter/material.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _pickDate() async {
    final DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (datePicked != null) {
      setState(() {
        selectedDate = datePicked;
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 12, minute: 0),
    );
    if (timePicked != null) {
      setState(() {
        selectedTime = timePicked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateText = selectedDate != null
        ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
        : "Belum dipilih";
    final timeText = selectedTime != null
        ? "${selectedTime!.hour}:${selectedTime!.minute.toString().padLeft(2, '0')}"
        : "Belum dipilih";

    return Scaffold(
      appBar: AppBar(title: const Text("Date & Time Picker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _pickDate,
              child: const Text("Pilih Tanggal"),
            ),
            Text("Tanggal: $dateText"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickTime,
              child: const Text("Pilih Waktu"),
            ),
            Text("Waktu: $timeText"),
          ],
        ),
      ),
    );
  }
}
