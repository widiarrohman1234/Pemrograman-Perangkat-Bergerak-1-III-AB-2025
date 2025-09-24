import 'package:flutter/material.dart';

class TextTask extends StatelessWidget {
  const TextTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nama: Widi Arrohman",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // NIM dengan Text.rich
            const Text.rich(
              TextSpan(
                text: "NIM: ",
                children: [
                  TextSpan(
                    text: "3042019006",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Program Studi italic
            const Text(
              "Program Studi: Teknik Informatika",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 8),

            // Status dengan warna
            const Text("Status: Aktif", style: TextStyle(color: Colors.green)),
            const SizedBox(height: 8),

            // Catatan panjang → maxLines + overflow
            const Text(
              "Catatan: Mahasiswa ini memiliki catatan akademik yang sangat panjang dan detail sekali...",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),

            // Teks interaktif
            GestureDetector(
              onTap: () {
                debugPrint("Detail nilai mahasiswa terbuka!");
              },
              child: const Text(
                "Klik di sini untuk melihat detail nilai",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Seleksi teks
            const SelectionArea(
              child: Text(
                "Catatan ini bisa dicopy mahasiswa untuk laporan.",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
