import 'package:flutter/material.dart';

class ContainerNested extends StatelessWidget {
  const ContainerNested({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[300],
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blue,
          child: const Text("Nested Container"),
        ),
      ),
    );
  }
}
