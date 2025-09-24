import 'package:flutter/material.dart';

class AppBarProperty extends StatelessWidget {
  const AppBarProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absensi Kuliah"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 4,
        actions: const [Icon(Icons.notifications), SizedBox(width: 10)],
      ),
      body: const Center(child: Text("Data absensi perkuliahan.")),
    );
  }
}
