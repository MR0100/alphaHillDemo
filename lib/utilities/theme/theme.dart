library application_theme;

import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

part 'theme_data/dark_them_data.dart';
part 'theme_data/light_theme_data.dart';
part 'theme_handler.dart';

/// TODO: IF YOU ADD NEW THEME_DATA THEN PLEASE ADD THAT FILE AS A PART OF THIS LIBRARY.
///
/// here, 'part' is the keyword to mention that the specified file is the part of current library.
/// so, you have to do is.
/// part 'path/filename.dart';
///
/// ex.
/// part 'theme_data/demo_theme.dart';
///

class ThemeManager {
  /// check for the system and initialize the default theme.
  static initializeTheme() {
    /// fetching stored theme string from the application storage cache.
    /// if the application is opening first time then it will use the theme automatically.
    String storedTheme =
        VariableUtilities.prefs.read<String>(PreferenceKey.storedTheme) ??
            "auto";

    /// write cases for all theme.
    /// TODO : IF YOU ARE USING MULTIPLE THEMES (MORE THAN TWO) THEN USE CASE TO CHECK AND ASSIGN THEME ACCORDINGLY.
    /// we have handled only two case for now.

    switch (storedTheme) {
      case "dark":
        VariableUtilities.theme = const DarkThemeData();
        break;
      case "light":
        VariableUtilities.theme = const LightThemeData();
        break;
      default:

        /// check for the system theme and set the application theme accordingly.
        /// it will only toggle between dark and light.
        /// if you are using more then two then this will not work to handle other themes.
        bool isSystemModeIsLight =
            (SchedulerBinding.instance?.window.platformBrightness ??
                    Brightness.light) ==
                Brightness.light;

        /// check if user has dark mode in mobile then it will set DarkThemeData and other wise user LightThemeData
        if (isSystemModeIsLight) {
          VariableUtilities.theme = const LightThemeData();
        } else {
          VariableUtilities.theme = const DarkThemeData();
        }
    }
  }

  /// while change theme from the settings of application then it will assign the selected theme data.
  /// TODO : IF YOU WANT TO USE MORE THAN ONE THEME THEN YOU HAVE TO ADD MORE THAN ONE CASE.
  swichTheme(ThemeHandler theme) {
    VariableUtilities.theme = theme;
    switch (theme) {
      case LightThemeData():
        VariableUtilities.prefs.write(PreferenceKey.storedTheme, 'light');
        break;
      case DarkThemeData():
        VariableUtilities.prefs.write(PreferenceKey.storedTheme, 'dark');
        break;
      default:
        VariableUtilities.prefs.write(PreferenceKey.storedTheme, 'light');
    }
  }
}
