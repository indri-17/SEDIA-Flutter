import 'package:flutter/material.dart';

class JadwalTab extends StatefulWidget {
  const JadwalTab({super.key});

  @override
  State<JadwalTab> createState() => _JadwalTabState();
}

class _JadwalTabState extends State<JadwalTab> {
  int selectedDay = 11;

  @override
  Widget build(BuildContext context) {
    bool hasActivity = (selectedDay == 18);

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
                        'Kalender',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0021A7),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Kotak Kalender dengan Shadow Figma[cite: 10]
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
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('<', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Color(0xFF0021A7), fontSize: 16)),
                                Text(
                                  'September 2025',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF0021A7),
                                  ),
                                ),
                                Text('>', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Color(0xFF0021A7), fontSize: 16)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFAEA),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: const Color(0xFFFFECAF), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Min'].map((day) {
                                      return Text(
                                        day,
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF0021A7),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 8),
                                  Divider(
                                    thickness: 1,
                                    color: const Color(0xFF0021A7).withValues(alpha: 0.3),
                                  ),
                                  const SizedBox(height: 8),
                                  _buildDateRow([1, 2, 3, 4, 5, 6, 7]),
                                  const SizedBox(height: 10),
                                  _buildDateRow([8, 9, 10, 11, 12, 13, 14]),
                                  const SizedBox(height: 10),
                                  _buildDateRow([15, 16, 17, 18, 19, 20, 21]),
                                  const SizedBox(height: 10),
                                  _buildDateRow([22, 23, 24, 25, 26, 27, 28]),
                                  const SizedBox(height: 10),
                                  _buildDateRow([29, 30, 0, 0, 0, 0, 0]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Divider(
                        thickness: 1.2,
                        color: const Color(0xFF0021A7),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Kamis, $selectedDay September 2025',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0021A7),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Kotak Info Aktivitas dengan Shadow Figma[cite: 10]
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hasActivity ? 'Hari ini ada 1 aktivitas' : 'Hari ini tidak ada aktivitas',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0021A7),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFAEA),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: const Color(0xFFFFECAF), width: 1),
                              ),
                              child: hasActivity
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Kuliah - Desain Web',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF0021A7),
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              '10.20 - 14.30',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
                                    )
                                  : const Text(
                                      'Tidak ada aktivitas',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        color: Color(0xFFB4CEFF),
                                        fontWeight: FontWeight.w600,
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
          ),
        ],
      ),
    );
  }

  Widget _buildDateRow(List<int> dates) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: dates.map((date) {
        if (date == 0) return const SizedBox(width: 24, height: 24);
        bool isSelected = (date == selectedDay);
        return InkWell(
          onTap: () {
            setState(() {
              selectedDay = date;
            });
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF0021A7) : Colors.transparent,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '$date',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? const Color(0xFFFFECAF) : const Color(0xFF0021A7),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}