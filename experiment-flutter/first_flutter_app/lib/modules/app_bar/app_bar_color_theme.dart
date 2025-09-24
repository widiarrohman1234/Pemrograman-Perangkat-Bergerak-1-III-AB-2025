import 'package:flutter/material.dart';

class AppBarColorTheme extends StatelessWidget {
  const AppBarColorTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absensi Kelas"),
        backgroundColor: Colors.green,
        actions: [
          TextButton(
            onPressed: () {
              print("Logout mahasiswa");
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white, // kontras dengan hijau
            ),
            child: const Text("Logout"),
          ),
        ],
      ),
      body: const Center(child: Text("Data absensi perkuliahan.")),
    );
  }
}
