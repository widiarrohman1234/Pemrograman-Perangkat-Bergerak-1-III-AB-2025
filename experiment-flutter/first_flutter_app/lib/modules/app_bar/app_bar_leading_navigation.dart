import 'package:flutter/material.dart';

class AppBarLeadingNavigation extends StatelessWidget {
  const AppBarLeadingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.qr_code_scanner),
          onPressed: () {
            print("Fitur scan absensi terbuka");
          },
        ),
        title: const Text("Absensi Kelas"),
      ),
      body: const Center(child: Text("Scan QR untuk hadir.")),
    );
    ;
  }
}
