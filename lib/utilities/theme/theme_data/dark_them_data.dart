part of application_theme;

/// This is the class of the colors.
/// All the colors you are going to use for the dark mode will be in this file.
/// TODO: WHEN YOU ADD NEW COLOR PROPERTY IN THE THEMEHANDLER CLASS THEN YOU MUST HAVE TO SPECIFY COLOR FOR THAT IN THIS FILE.

class DarkThemeData extends ThemeHandler {
  const DarkThemeData()
      : super(
          whiteColor: const Color(0xFFFFFFFF),
          blackColor: const Color(0xFF121212),
          transparent: const Color(0x00000000),
          successColor: const Color(0xFF0C6C40),
          successColorLight: const Color(0xFF72F9BC),
          errorColor: const Color(0xFF9A0907),
          errorColorLight: const Color(0xFFEE7F7D),
          pendingColor: const Color(0xFFB16508),
          pendingColorLight: const Color(0xFFF9C78B),
          darkBlueGreyTwo: const Color(0xFF0A0F20),
          coolGrey: const Color(0xFFBABCC4),
          primaryTextColor: const Color(0xFFFFFFFF),
          secondaryTextColor: const Color(0xFFBABCC4),
          lightGoldTwo: const Color(0xFFFFD940),
          darkBlueGrey: const Color(0xFF101833),
          steel: const Color(0xFF878B99),
        );
}
