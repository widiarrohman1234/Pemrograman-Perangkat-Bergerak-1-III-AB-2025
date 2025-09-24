import 'package:flutter/material.dart';

class ScaffoldModule extends StatelessWidget {
  const ScaffoldModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jadwal Kuliah")),
      body: const Center(child: Text("Senin - Algoritma\nSelasa - Flutter")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
