import 'package:flutter/material.dart';

class RowBasic extends StatelessWidget {
  const RowBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // sebar rata di horizontal
      crossAxisAlignment:
          CrossAxisAlignment.center, // posisikan di tengah vertical
      children: const [
        Icon(Icons.book, size: 30, color: Colors.blue),
        Text("Pemrograman Mobile 1"),
        Text("3 SKS"),
      ],
    );

    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, // bagi ruang vertikal rata
        crossAxisAlignment: CrossAxisAlignment.start, // rata kiri horizontal
        children: [
          Text("Nama: Budi Santoso"),
          Text("NIM: 20230123"),
          Text("Prodi: Informatika"),
        ],
      ),
    );
  }
}
