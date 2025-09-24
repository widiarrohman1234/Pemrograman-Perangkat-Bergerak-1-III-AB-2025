import 'package:flutter/material.dart';

class RowNesting extends StatelessWidget {
  const RowNesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/person_icon.jpg"),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Nama: Budi Santoso"),
              Text("NIM: 20230123"),
              Text("Prodi: Informatika"),
            ],
          ),
        ],
      ),
    );
  }
}
