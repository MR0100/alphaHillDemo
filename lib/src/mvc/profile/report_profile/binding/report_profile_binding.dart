import 'package:alpha_hill_demo/src/mvc/profile/report_profile/controller/report_profile_controller.dart';
import 'package:get/instance_manager.dart';

class ReportProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReportProfileController(),
        tag: ReportProfileController().toString());
  }
}
