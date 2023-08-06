import 'package:flutter/material.dart';

import 'increament_decreament_stream.dart';

// ignore: must_be_immutable
class IncreamentDecreamentApp extends StatelessWidget {
  IncreamentDecreamentApp({super.key});
  int count1 = 0;
  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    IncreamentDecreamentBloc.counterOneValue = --count1;
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                StreamBuilder(
                  builder: (context, snapshot) => Text(
                    snapshot.data.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  initialData: 0,
                  stream: IncreamentDecreamentBloc.counterOneStream,
                ),
                FloatingActionButton(
                  onPressed: () {
                    IncreamentDecreamentBloc.counterOneValue = ++count1;
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    IncreamentDecreamentBloc.counterTwoValues = count2 -= 2;
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                StreamBuilder(
                  builder: (context, snapshot) => Text(
                    snapshot.data.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  initialData: 0,
                  stream: IncreamentDecreamentBloc.counterTwoStream,
                ),
                FloatingActionButton(
                  onPressed: () {
                    IncreamentDecreamentBloc.counterTwoValues = count2 += 2;
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
