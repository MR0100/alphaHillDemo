import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackType {
  error,
  warning,
  success,
}

showMySnackBar({
  required String title,
  required String message,
  SnackType type = SnackType.success,
}) {
  Get.showSnackbar(
    GetSnackBar(
      titleText: Text(
        title,
        style: FontUtilities.h16(
          fontColor: VariableUtilities.theme.whiteColor,
          fontWeight: FWT.bold,
        ),
      ),
      messageText: Text(
        message,
        style: FontUtilities.h12(
          fontColor: VariableUtilities.theme.whiteColor,
        ),
      ),
      duration: const Duration(
        seconds: 3,
      ),
      animationDuration: const Duration(
        milliseconds: 500,
      ),
      barBlur: 5,
      snackPosition: SnackPosition.TOP,
      dismissDirection: DismissDirection.startToEnd,
      backgroundGradient: LinearGradient(
        colors: type == SnackType.success
            ? [
                VariableUtilities.theme.successColor,
                VariableUtilities.theme.successColorLight,
              ]
            : type == SnackType.error
                ? [
                    VariableUtilities.theme.errorColor,
                    VariableUtilities.theme.errorColorLight,
                  ]
                : [
                    VariableUtilities.theme.pendingColor,
                    VariableUtilities.theme.pendingColorLight,
                  ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  );
}
