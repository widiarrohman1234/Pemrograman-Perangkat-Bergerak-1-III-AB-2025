import 'package:flutter/material.dart';

class ContainerModule extends StatelessWidget {
  const ContainerModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(12), // jarak luar
        padding: const EdgeInsets.all(16), // jarak dalam
        width: 250,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: Budi Santoso",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("NIM: 123456789"),
            SizedBox(height: 8),
            Text("Status: Hadir ✅", style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
