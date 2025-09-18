import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget BorderedImage() {
    double heightWeightImage = 100;
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.network(
        'https://docs.flutter.dev/assets/images/dash/Dash.png',
        fit: BoxFit.cover,
        height: heightWeightImage,
        width: heightWeightImage,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:
          /// =======================================
          /// Layout multiple widgets vertically or horizontally
          /// =======================================
          // Scaffold(
          //   appBar: AppBar(
          //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //     title: Text("Flutter Demo Home Page"),
          //   ),
          //   // body: Center(child: BorderedImage()),
          //   body: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Expanded(
          //         child: Column(children: [BorderedImage(), Text("Dash 1")]),
          //       ),
          //       Expanded(
          //         child: Column(children: [BorderedImage(), Text("Dash 2")]),
          //       ),
          //       Expanded(
          //         flex: 2,
          //         child: Column(children: [BorderedImage(), Text("Dash 3")]),
          //       ),
          //       Expanded(
          //         child: Column(children: [BorderedImage(), Text("Dash 4")]),
          //       ),
          //       Expanded(
          //         child: Column(children: [BorderedImage(), Text("Dash 5")]),
          //       ),
          //     ],
          //   ),
          // ),
          // =======================================
          // Scrolling widgets
          // =======================================
          Scaffold(
            appBar: AppBar(
              title: Text("My App Bar"),
              backgroundColor: Color.fromRGBO(255, 255, 156, 4),
            ),
            body: ListView(
              children: [
                BorderedImage(),
                BorderedImage(),
                BorderedImage(),
              ],
            ),
          ),
    );
  }
}
