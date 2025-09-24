import 'package:flutter/material.dart';

class ContainerTransform extends StatelessWidget {
  const ContainerTransform({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        color: Colors.blue,
        transform: Matrix4.rotationZ(0.3), // rotasi 0.3 radian
        child: const Center(child: Text("Rotated")),
      ),
    );
  }
}
