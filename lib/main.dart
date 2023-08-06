import 'package:flutter/material.dart';
import 'package:stream_demo/my_practice/increament_decreament_app.dart';

import 'my_practice/increament_decreament_app_demo/increament_decreament_app.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IncreamentDecreamentApp(),
    );
  }
}
