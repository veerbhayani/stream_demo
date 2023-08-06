import 'package:flutter/material.dart';
import 'package:stream_demo/counter_stream.dart';

// ignore: must_be_immutable
class CounterApp extends StatelessWidget {
  CounterApp({super.key});
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          builder: (context, snapshot) => Text(
            snapshot.data.toString(),
          ),
          initialData: 0,
          stream: CounterBlock.counterStream,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterBlock.counterValue = ++count;
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
