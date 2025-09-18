import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widget_previews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(title: const Text('My Home Page')),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Hello, World!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                      _incrementCounter();
                    },
                    child: Text('Click to count: $_counter'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

@Preview(name: 'My Sample Preview')
Widget mySampleText() {
  // return const Text('Hello, World!');
  return MaterialApp(
    // Root widget
    home: Scaffold(
      appBar: AppBar(title: const Text('My Home Page')),
      body: Center(
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                const Text('Hello, World!'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Click!');
                  },
                  child: Text('Click to count:'),
                ),
              ],
            );
          },
        ),
      ),
    ),
  );
}
