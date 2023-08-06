import 'dart:async';

class IncreamentDecreamentBloc {
  //  counter1 controller
  static final StreamController<int> _counter1Controller =
      StreamController<int>();
  //  counter2 controller
  static final StreamController<int> _counter2Controller =
      StreamController<int>();

  static Stream<int> get counterOneStream => _counter1Controller.stream;
  static Sink<int> get counterOneSink => _counter1Controller.sink;
  static set counterOneValue(int data) => counterOneSink.add(data);

  static Stream<int> get counterTwoStream => _counter2Controller.stream;
  static Sink<int> get counterTwoSink => _counter2Controller.sink;
  static set counterTwoValues(int data) => counterTwoSink.add(data);
}
