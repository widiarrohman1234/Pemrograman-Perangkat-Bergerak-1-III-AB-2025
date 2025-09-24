import 'package:flutter/material.dart';

class ContainerBorderShadow extends StatelessWidget {
  const ContainerBorderShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Icon(Icons.star, color: Colors.white, size: 40),
      ),
    );
  }
}
