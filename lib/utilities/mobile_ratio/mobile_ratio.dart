import 'package:flutter/material.dart';

class MobileRatio {
  static getHeight(BuildContext context, double height) {
    /// this is the height mostly used in the devices.
    /// the height is in pixel.
    double averageUsedHeight = 1082;
    double deviceHeight = MediaQuery.of(context).size.height;
    return (averageUsedHeight * height) / deviceHeight;
  }

  static getWidth(BuildContext context, double width) {
    /// this is the width mostly used in the devices.
    /// the width is in pixel.
    double averageUsedWidth = 500;
    double deviceWidth = MediaQuery.of(context).size.width;
    return (averageUsedWidth * width) / deviceWidth;
  }
}
