import 'package:flutter/material.dart';

class TextSelectionArea extends StatelessWidget {
  const TextSelectionArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const SelectionArea(
        child: Text("Materi kuliah ini bisa di-copy oleh mahasiswa."),
      ),
    );
  }
}
