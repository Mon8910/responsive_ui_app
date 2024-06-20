import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xFF064061));
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleSemiBold20 (context){
    return TextStyle(
  fontSize: getResponsiveFontSize(context,fontSize: 16),
  fontWeight: FontWeight.w400,
  fontFamily: 'Montserrat',
  color: const Color(0xFF064061)
);
  }
  static TextStyle styleRegular12 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,fontSize: 12),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: const Color(0xFFAAAAAA),
  );
  }
  static TextStyle styleSemiBold24 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,fontSize: 24),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: const Color(0xFF4EB7F2),
  );
  }
  static TextStyle styleRegular14 (context){
  return  TextStyle(
      fontSize: getResponsiveFontSize(context,fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xFFAAAAAA));
  }
  static TextStyle styleSemiBold18 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,fontSize: 18),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: const Color(0xFFFFFFFF),
  );
  }
  static TextStyle styleBold18 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,fontSize: 18),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: const Color(0xFF4EB7F2),
  );
  }
  static TextStyle styleMedium20 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,fontSize: 20),
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
    color: const Color(0xFFFFFFFF),
  );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  final lowerLimit = fontSize * .8;
  final upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatach=PlatformDispatcher.instance;
  // var phiscalWidth=dispatach.views.first.physicalSize.width;
  // var devicePixelRatio=dispatach.views.first.devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
