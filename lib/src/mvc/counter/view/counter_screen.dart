import 'package:alpha_hill_demo/src/mvc/counter/controller/counter_controller.dart';
import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  final CounterController _counterController =
      Get.find<CounterController>(tag: CounterController().toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Application Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Wrapping the widget with GetBuilder to see the effect immediatly after update the data.
          GetBuilder(
            init: _counterController,
            builder: (_) => Text(
              _counterController.counter.toString(),
            ),
          ),
          const SizedBox(height: 10),
          IconButton(
            onPressed: () {
              /// calling the logical function from the controller.
              _counterController.incrementCounter();
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              /// calling the logical function from the controller.
              _counterController.decrementCounter();
            },
            icon: const Icon(Icons.remove),
          ),

          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteUtilities.userScreen);
            },
            child: const Text("Check API DEMO"),
          ),
        ],
      ),
    );
  }
}
