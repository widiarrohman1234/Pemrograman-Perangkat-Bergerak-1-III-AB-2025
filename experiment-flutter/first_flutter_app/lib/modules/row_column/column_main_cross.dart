import 'package:flutter/material.dart';

class ColumnMainCross extends StatelessWidget {
  const ColumnMainCross({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.person, size: 50),
        Text("Absensi Mahasiswa"),
        Text("Status: Hadir"),
      ],
    );
    ;
  }
}
