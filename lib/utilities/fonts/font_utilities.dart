import 'package:flutter/material.dart';

/// FontUtilities is main base class for all the styles of fonts used in the whole application.
/// you can directly change the font styles in this file.
/// so, all the fonts used in application will be changed.
/// there we provided some of the most used fontsizes.
/// you can add new fontsize if you don't find in this file.
class FontUtilities {
  /// FONTSTYLE FOR FONT SIZE 8
  static TextStyle h8({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 8,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 9
  static TextStyle h9({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 9,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 10
  static TextStyle h10({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 10,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 11
  static TextStyle h11({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 11,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 12
  static TextStyle h12({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 12,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 14
  static TextStyle h14({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 14,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 16
  static TextStyle h16({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 16,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 18
  static TextStyle h18({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 18,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 20
  static TextStyle h20({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 20,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 22
  static TextStyle h22({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 22,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 24
  static TextStyle h24({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 24,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 26
  static TextStyle h26({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 26,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 28
  static TextStyle h28({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 28,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 30
  static TextStyle h30({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 30,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 32
  static TextStyle h32({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 32,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 35
  static TextStyle h35({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 35,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 40
  static TextStyle h40({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 40,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 45
  static TextStyle h45({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 45,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 50
  static TextStyle h50({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 50,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 55
  static TextStyle h55({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 55,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 60
  static TextStyle h60({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 60,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 72
  static TextStyle h72({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 72,
    );
  }

  /// TODO : IN CASE YOU DIDN'T FIND THE FONT YOU NEED IN YOUR APPLICATION, PLEASE ADD FONT AS BELOW.
  /// UNCOMMENT THE BELOW CODE AND THEN COPY THE CODE.
  /// AND JUST CHANGE FONT SIZE.
  ///
  /// FONTSTYLE FOR FONT SIZE [72 : 72 is the font size]
  /// static TextStyle [h72 : h72 is the name of the font for this particular size.]({
  ///   required Color? fontColor,
  ///   FWT fontWeight = FWT.regular,
  /// }) {
  ///   return TextStyle(
  ///     color: fontColor,
  ///     fontWeight: getFontWeight(fontWeight),
  ///     fontSize: [72 : 72 is the font size.],
  ///   );
  /// }

}

/// these are the most commonly used font weight for every mobile application and websites.
enum FWT {
  bold, //700
  semiBold, // 600
  medium, // 500
  regular, //400
  light, // 200
}

/// THIS FUNCTION IS USED TO SET FONT WEIGHT ACCORDING TO SELECTED ENUM...
FontWeight getFontWeight(FWT fwt) {
  switch (fwt) {
    case FWT.light:
      return FontWeight.w200;
    case FWT.regular:
      return FontWeight.w400;
    case FWT.medium:
      return FontWeight.w500;
    case FWT.semiBold:
      return FontWeight.w600;
    case FWT.bold:
      return FontWeight.w700;
  }
}
