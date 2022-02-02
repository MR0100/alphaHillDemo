import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

/// All the global variables used in the application are defined in this file.
class VariableUtilities {
  static late Size screenSize;

  /// This is the instance of the GetStorage.
  /// GetStorage is used for the setting preferences and local data in the device.
  static late GetStorage prefs;

  /// This is the instance of the ThemeHandler.
  /// This object / instance is used to access all colors defined in the theme for application.
  static late ThemeHandler theme;
}
