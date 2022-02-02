import 'package:get/get_state_manager/get_state_manager.dart';

/// This is the controller of the counter screen to handle all the tasks and logical part of the counter screen.
///
/// TODO : WRITE ALL THE LOGIC REGARDING COUNTER IN THIS SCREEN.

class CounterController extends GetxController {
  /// created variable to use in the application.
  int _counter = 0;

  /// created getter and setter to access private member of the class from UI.
  int get counter => _counter;
  set counter(int value) {
    _counter = value;
    update();
  }

  /// logical part of the increment the counter...
  incrementCounter() {
    counter++;
    update();
  }

  /// logical part of the decrement the counter...
  decrementCounter() {
    counter--;
    update();
  }
}
