import 'package:flutter/material.dart';

class ScaffoldNested extends StatelessWidget {
  const ScaffoldNested({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mata Kuliah"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Senin"),
              Tab(text: "Selasa"),
              Tab(text: "Rabu"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Algoritma")),
            Center(child: Text("Flutter")),
            Center(child: Text("Basis Data")),
          ],
        ),
      ),
    );
  }
}
