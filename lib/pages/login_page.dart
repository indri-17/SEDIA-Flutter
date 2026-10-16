import 'package:flutter/material.dart';
import 'main_navigation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Background Gradasi
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.85,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFEEB2),
                  Color(0xFFFFD56F),
                ],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
          ),
          
          // 2. Background Kotak-kotak tipis
          Positioned.fill(
            child: Opacity(
              opacity: 0.07,
              child: Image.asset(
                'assets/images/bg_kotak.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 3. Konten Utama dengan Layout SpaceBetween agar tidak numpuk di tengah
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28, 40, 28, 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Bagian Atas: Logo, SEDIA, Slogan, dan Deskripsi
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      // Logo Diperbesar
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Teks SEDIA
                      const Text(
                        'SEDIA',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0021A7),
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 24),
                      
                      // Judul Slogan
                      const Text(
                        'Jadwalmu, Barangmu,\njangan Lupa!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0021A7),
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Deskripsi
                      const Text(
                        'Aplikasi pengingat barang bawaan\nberdasarkan jadwal dan aktivitasmu.\nBiar kamu selalu siap kapanpun',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.5,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0021A7),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),

                  // Bagian Bawah: Tombol Mulai & Teks Masuk
                  Column(
                    children: [
                      // Tombol Mulai (Proporsional dengan Shadow)
                      SizedBox(
                        width: 280,
                        height: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.25),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainNavigation(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0044FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Mulai',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Teks Bawah "Sudah punya akun? Masuk"
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sudah punya akun? ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: Color(0xFF49454F),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Masuk',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0044FF),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}