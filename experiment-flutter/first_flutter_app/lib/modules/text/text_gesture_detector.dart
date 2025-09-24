import 'package:flutter/material.dart';

class TextGestureDetector extends StatelessWidget {
  const TextGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("Dosen ditekan untuk detail profil.");
        },
        child: const Text(
          "Klik di sini untuk melihat profil Dosen",
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
