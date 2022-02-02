import 'package:alpha_hill_demo/src/mvc/profile/report_profile/model/reason_data_model.dart';
import 'package:alpha_hill_demo/src/widgets/dialog_and_toasts/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ReportProfileController extends GetxController {
  TextEditingController additionalNotesTextController = TextEditingController();

  List<ReasonDataModel> reasonsList = [
    ReasonDataModel(uniqueId: 1, reason: 'Reason1', isSelected: false),
    ReasonDataModel(uniqueId: 2, reason: 'Reason2', isSelected: false),
    ReasonDataModel(uniqueId: 3, reason: 'Reason3', isSelected: false),
    ReasonDataModel(uniqueId: 4, reason: 'Reason4', isSelected: false),
    ReasonDataModel(uniqueId: 5, reason: 'Reason5', isSelected: false),
    ReasonDataModel(uniqueId: 6, reason: 'Reason6', isSelected: false),
    ReasonDataModel(uniqueId: 7, reason: 'Other', isSelected: false),
  ];

  /// update reason selection state.
  void updateReasonSelectedState(
      {required int reasonUniqueId, required bool value}) {
    int reasonIndex =
        reasonsList.indexWhere((element) => element.uniqueId == reasonUniqueId);
    reasonsList[reasonIndex].isSelected = value;
    update();
  }

  /// logic on press of send report button.
  void sendReport() {
    int selectedReasonLength =
        reasonsList.where((element) => element.isSelected).length;
    if (selectedReasonLength > 0) {
      showMySnackBar(
        title: 'Report Sent!',
        message: 'Your report has been sent successfully!',
        type: SnackType.success,
      );
    } else {
      showMySnackBar(
        title: 'Failed to send report!',
        message: 'Please select atleast one reasone.',
        type: SnackType.error,
      );
    }
  }
}
