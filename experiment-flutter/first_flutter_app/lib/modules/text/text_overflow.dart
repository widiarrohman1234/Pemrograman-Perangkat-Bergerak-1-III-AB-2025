import 'package:flutter/material.dart';

class TextOverflowClass extends StatelessWidget {
  const TextOverflowClass({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        decoration: BoxDecoration(border: Border.all()),
        child: const Text(
          'Absensi mahasiswa kelas Pemrograman Perangkat Bergerak',
          overflow: TextOverflow.ellipsis ,
        ),
      ),
    );
  }
}
