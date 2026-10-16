import 'package:flutter/material.dart';

class AktivitasTab extends StatelessWidget {
  const AktivitasTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> aktivitasList = [
      {'title': 'Kuliah - Senin', 'time': '08.40 - 16.30'},
      {'title': 'Kuliah - Selasa', 'time': '13.00 - 16.30'},
      {'title': 'Kuliah - Rabu', 'time': '07.00 - 10.20'},
      {'title': 'Kuliah - Kamis', 'time': '15.30 - 18.00'},
      {'title': 'Kuliah - Jumat', 'time': '10.20 - 14.30'},
      {'title': 'Olahraga', 'time': '06.00 - 08.00'},
      {'title': 'Jalan-jalan', 'time': '06.00 - 12.00'},
    ];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFC5D8FF),
                ],
                stops: [0.0, 0.7, 1.0],
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.12,
              child: Image.asset(
                'assets/images/bg_kotak.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'SEDIA',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0021A7),
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.menu, color: Color(0xFF0021A7), size: 28),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                    children: [
                      const Text(
                        'Aktivitas',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0021A7),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Kotak Daftar Aktivitas dengan Shadow Figma[cite: 10]
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF0BD),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFFFECAF), width: 1.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.25),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFAEA),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFFFECAF), width: 1),
                          ),
                          child: Column(
                            children: List.generate(aktivitasList.length, (index) {
                              final item = aktivitasList[index];
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['title']!,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF0021A7),
                                              ),
                                            ),
                                            const SizedBox(height: 3),
                                            Text(
                                              item['time']!,
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF0044FF),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: const Text(
                                            '5 barang',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (index < aktivitasList.length - 1)
                                    Divider(
                                      height: 16,
                                      thickness: 1,
                                      color: const Color(0xFF0021A7).withValues(alpha: 0.25),
                                    ),
                                ],
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: SizedBox(
                          width: 220,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF002CDA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 3,
                            ),
                            child: const Text(
                              '+ Tambah Aktivitas',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}