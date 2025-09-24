import 'package:flutter/material.dart';

class ContainerTask extends StatelessWidget {
  const ContainerTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        MahasiswaCard(
          nama: "Budi Santoso",
          nim: "21012345",
          status: "Hadir",
          color: Colors.green,
        ),
        MahasiswaCard(
          nama: "Ani Wijaya",
          nim: "21067890",
          status: "Izin",
          color: Colors.orange,
        ),
        MahasiswaCard(
          nama: "Dewi Lestari",
          nim: "21011122",
          status: "Alpha",
          color: Colors.red,
        ),
      ],
    );
  }
}

class MahasiswaCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String status;
  final Color color;

  const MahasiswaCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(3, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama: $nama",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text("NIM: $nim"),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Status: $status",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
