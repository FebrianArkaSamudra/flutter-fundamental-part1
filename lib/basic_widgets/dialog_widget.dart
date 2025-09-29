import 'package:flutter/material.dart';

class DialogDemoApp extends StatelessWidget {
  const DialogDemoApp({Key? key}) : super(key: key);

  // Fungsi menampilkan AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Judul"),
        content: const Text("Ini adalah pesan di dalam alert dialog."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Tutup"),
          ),
        ],
      ),
    );
  }

  // Fungsi menampilkan SimpleDialog
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: const Text("Pilih Opsi"),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Opsi 1"),
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Opsi 2"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan tombol back otomatis
      appBar: AppBar(
        title: const Text("Contoh Dialog Widget"),
        automaticallyImplyLeading: true, // Aktifkan tombol back ←
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, // agar ikon back berwarna hitam
        elevation: 1,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showAlertDialog(context),
              child: const Text("Tampilkan AlertDialog"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSimpleDialog(context),
              child: const Text("Tampilkan SimpleDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
