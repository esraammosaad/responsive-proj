import 'package:flutter/material.dart';
//scale factor
//responsive font
//(min , max)
double getResponsiveFontSize(BuildContext context, {required fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFont = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.80;
  double upperLimit = fontSize * 1.20;
  responsiveFont.clamp(lowerLimit, upperLimit);
  return responsiveFont;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
