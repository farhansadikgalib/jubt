import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

TextStyle textHeaderStyle(
    {color = AppColors.headerTextColor,
    double fontSize = 30, isShadowRequired = false,
    fontWeight = FontWeight.w600}) {
  return GoogleFonts.inter(
      shadows: isShadowRequired ? [
        Shadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(15, 15),
            blurRadius: 15),
      ] : [],
      fontSize: fontSize, color: color, fontWeight: fontWeight);
}

TextStyle textAppBarStyle(
    {color = AppColors.appBarTextColor,
    double fontSize = 14,isShadowRequired = false,
    fontWeight = FontWeight.w600,
    bool isGrayColor = false}) {
  return GoogleFonts.inter(
      fontSize: fontSize,
      color: isGrayColor ? AppColors.gray : color,
      shadows: isShadowRequired ? [
        Shadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(15, 15),
            blurRadius: 15),
      ] : [],
      fontWeight: fontWeight);
}

TextStyle textRegularStyle(
    {color = AppColors.textColor,
    double fontSize = 12,
      isShadowRequired = false,
    fontWeight = FontWeight.normal,
    bool isGrayColor = false,
    bool isWhiteColor = false,
    double? height,
    TextDecoration? decoration,
    }) {
  return GoogleFonts.inter(
    shadows: isShadowRequired ? [
      Shadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(15, 15),
          blurRadius: 15),
    ] : [],
    fontSize: fontSize,
    color: isWhiteColor
        ? AppColors.white
        : isGrayColor
            ? AppColors.gray
            : color,
    fontWeight: fontWeight,
    decoration: decoration,
    height: height,
    //height: needHeight ? 1.0 : 0.0
  );
}

TextStyle textStyleTourWithLineThrough(
    {color = AppColors.primaryColor,
    double fontSize = 10, isShadowRequired = false,
    fontWeight = FontWeight.normal,
    bool isGrayColor = false,
    bool isWhiteColor = false}) {
  return GoogleFonts.inter(
    shadows: isShadowRequired ? [
      Shadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(15, 15),
          blurRadius: 15),
    ] : [],
    fontSize: fontSize,
    color: isWhiteColor
        ? AppColors.white
        : isGrayColor
            ? AppColors.gray
            : color,
    fontWeight: fontWeight,
    decoration: TextDecoration.lineThrough,
    decorationColor: color,
  );
}

TextStyle textButtonStyle(
    {color = AppColors.white,
    double fontSize = 18,
      isShadowRequired = false,
    fontWeight = FontWeight.w600}) {
  return GoogleFonts.inter(
      shadows: isShadowRequired ? [
        Shadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(15, 15),
            blurRadius: 15),
      ] : [],
      fontSize: fontSize, color: color, fontWeight: fontWeight);
}

final hintStyle = GoogleFonts.inter(
    fontSize: 14, color: AppColors.inputColor, fontWeight: FontWeight.w500);

/// specifically for Auth text fields.
final smallHintStyle = GoogleFonts.inter(
    fontSize: 12, color: AppColors.inputColor, fontWeight: FontWeight.w500);