import 'package:flutter/material.dart';

class AppBarBasic extends StatelessWidget {
  const AppBarBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Mahasiswa")),
      body: Center(child: Text("App Bar")),
    );
  }
}
