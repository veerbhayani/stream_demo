import 'package:flutter/material.dart';
import 'package:stream_demo/my_practice/simple_crud_app_demo/simple_crud_app.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SimpleCrudeApp(),
    );
  }
}
