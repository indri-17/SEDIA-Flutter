import 'package:flutter/material.dart';

class TambahAktivitasPage extends StatelessWidget {
  const TambahAktivitasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Aktivitas', style: TextStyle(color: Color(0xFF0D235C), fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFFFEEB2),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF0D235C)),
      ),
      body: Container(
        color: const Color(0xFFF5F8FF),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Aktivitas',
                filled: true,
                fillColor: const Color(0xFFFFF9E6),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Waktu / Jam',
                filled: true,
                fillColor: const Color(0xFFFFF9E6),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0044FF),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Simpan Aktivitas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}