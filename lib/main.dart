import 'package:flutter/material.dart';
import 'pages/opening_page.dart'; // Menghubungkan ke halaman opening

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEDIA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // Opsional, sesuaikan jika ada font
      ),
      home: const OpeningPage(), // Aplikasi dimulai dari Opening Page
    );
  }
}