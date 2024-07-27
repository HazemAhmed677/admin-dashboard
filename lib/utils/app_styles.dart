import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 12),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
      );
  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 14),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
      );
  static TextStyle style1Medium16(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 16),
        fontWeight: FontWeight.w700,
        color: AppColors.secondPrimary,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 18),
        fontWeight: FontWeight.w600,
        color: AppColors.secondPrimary,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 20),
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 20),
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontFamily: 'Montserrat',
      );
  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(context: context, base: 24),
        fontWeight: FontWeight.w600,
        color: AppColors.secondPrimary,
        fontFamily: 'Montserrat',
      );
}

double getResponsiveText(
    {required BuildContext context, required double base}) {
  double scaleFactor = getScaleFactor(
    context: context,
  );
  double responsiveText = scaleFactor * base;
  double lowerLimit = responsiveText * 0.9;
  double upperLimit = responsiveText * 1.2;
  return responsiveText.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({required BuildContext context}) {
  double widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < SizeConfig.mobileLayout) {
    return widthOfScreen / 600;
  } else if (widthOfScreen < SizeConfig.tabletLayout) {
    return widthOfScreen / 1000;
  } else {
    return widthOfScreen / 1600;
  }
}
