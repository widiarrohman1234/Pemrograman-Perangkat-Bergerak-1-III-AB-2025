import 'package:flutter/material.dart';

class AppBarFlexibleSpace extends StatelessWidget {
  const AppBarFlexibleSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absensi Kelas"),
        backgroundColor: Colors.green,
        // flexibleSpace: Image.network(
        //   'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
        // ),
        flexibleSpace: Image.asset(
          "assets/images/banner_spanduk.webp",
          fit: BoxFit.cover,
        ),
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
