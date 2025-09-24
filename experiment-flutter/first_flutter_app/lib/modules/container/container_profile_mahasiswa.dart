import 'package:flutter/material.dart';

class MahasiswaCard extends StatelessWidget {
  const MahasiswaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        height: 200,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: Widi Arrohman",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("NIM: 3042019006"),
            SizedBox(height: 8),
            Text("Program Studi: Teknik Informatika"),
            SizedBox(height: 8),
            Text("Cita-cita: Flutter Developer di Startup Teknologi"),
          ],
        ),
      ),
    );
  }
}
