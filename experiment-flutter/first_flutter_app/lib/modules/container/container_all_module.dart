// lib\modules\container\container_all_module.dart
import 'package:flutter/material.dart';

class ContainerAllModule extends StatelessWidget {
  const ContainerAllModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // posisi child di dalam container
        padding: const EdgeInsets.all(16), // ruang di dalam container
        // color: Colors.blue.shade100, // warna background (jangan dipakai bersamaan dengan decoration)
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        foregroundDecoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 2,
          ), // overlay di atas container
        ),
        width: 200,
        height: 120,
        constraints: const BoxConstraints(
          minWidth: 100,
          minHeight: 80,
          maxWidth: 250,
          maxHeight: 150,
        ),
        margin: const EdgeInsets.all(20), // ruang di luar container
        transform: Matrix4.rotationZ(0.05), // memutar sedikit
        transformAlignment: Alignment.center,
        clipBehavior:
            Clip.hardEdge, // potong child yang keluar dari border radius
        child: const Text(
          "Container Lengkap!",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
