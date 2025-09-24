import 'package:flutter/material.dart';

class ColumnAlternatif extends StatelessWidget {
  const ColumnAlternatif({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          leading: Icon(Icons.book),
          title: Text("Matematika Diskrit"),
          subtitle: Text("3 SKS"),
        ),
        ListTile(
          leading: Icon(Icons.computer),
          title: Text("Algoritma & Pemrograman"),
          subtitle: Text("4 SKS"),
        ),
      ],
    );
    ;
  }
}
