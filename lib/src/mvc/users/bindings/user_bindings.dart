import 'package:alpha_hill_demo/src/mvc/users/controller/user_controller.dart';
import 'package:get/instance_manager.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController(), tag: UserController().toString());
  }
}
