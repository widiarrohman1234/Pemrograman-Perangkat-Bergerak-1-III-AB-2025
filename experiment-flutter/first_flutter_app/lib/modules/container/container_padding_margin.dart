// first_flutter_app\lib\modules\container\container_padding_margin.dart
import 'package:flutter/material.dart';

class ContainerPaddingMargin extends StatelessWidget {
  const ContainerPaddingMargin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        color: Colors.amber,
        child: const Text("Hello World"),
      ),
    );
  }
}
