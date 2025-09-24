import 'package:flutter/material.dart';

class RowColumnSpaceEvenly extends StatelessWidget {
  const RowColumnSpaceEvenly({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.person, size: 50),
        Text("Absensi Mahasiswa"),
        Text("Status: Hadir"),
      ],
    );
  }
}
