import 'package:flutter/material.dart';

class TextSpanModule extends StatelessWidget {
  const TextSpanModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text.rich(
        TextSpan(
          text: 'Halo ', // default
          children: <TextSpan>[
            TextSpan(
              text: 'Mahasiswa ',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: 'POLITAP',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
