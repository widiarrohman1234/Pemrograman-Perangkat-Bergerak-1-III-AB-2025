import 'package:flutter/material.dart';

class TextRich extends StatelessWidget {
  const TextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text.rich(
        TextSpan(
          text: "Dosen: ",
          children: [
            TextSpan(
              text: "Pak Andi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ); // konstruktor rich text
    ;
  }
}
