part of application_theme;

/// this is the main theme handler class of the application.
/// all the colors you want to use in the application will be in this file.
/// we are providing some of the colors by default.
/// in case you want to add new color please add the variable inside class and make required in the constructor.

/// NOTE: PLEASE NOTE THAT THE VARIABLE MUST BE REQUIRED IN CONSTRUCTOR.
abstract class ThemeHandler {
  /// main colors.
  final Color transparent;
  final Color whiteColor;
  final Color blackColor;

  /// snack colors.
  final Color successColor;
  final Color successColorLight;
  final Color errorColor;
  final Color errorColorLight;
  final Color pendingColor;
  final Color pendingColorLight;

  /// theme colors.
  final Color darkBlueGreyTwo;
  final Color coolGrey;
  final Color lightGoldTwo;
  final Color darkBlueGrey;
  final Color steel;

  /// font colors.
  final Color primaryTextColor;
  final Color secondaryTextColor;

  const ThemeHandler({
    required this.transparent,
    required this.whiteColor,
    required this.blackColor,
    required this.successColor,
    required this.errorColor,
    required this.pendingColor,
    required this.successColorLight,
    required this.errorColorLight,
    required this.pendingColorLight,
    required this.darkBlueGreyTwo,
    required this.coolGrey,
    required this.lightGoldTwo,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.darkBlueGrey,
    required this.steel,
  });
}
