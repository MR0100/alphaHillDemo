import 'package:alpha_hill_demo/src/mvc/counter/controller/counter_controller.dart';
import 'package:get/instance_manager.dart';

/// ALL THE CONTROLLERS WILL BE PUT IN THIS FILE.

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CounterController>(CounterController(),
        tag: CounterController().toString());
  }
}
