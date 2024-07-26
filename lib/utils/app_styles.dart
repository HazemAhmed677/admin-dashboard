import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleRegular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
  );
  static const TextStyle style1Medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.secondPrimary,
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.secondPrimary,
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleMedium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
    fontFamily: 'Montserrat',
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.secondPrimary,
    fontFamily: 'Montserrat',
  );
  // getResponsiveText({required BuildContext context, required String fontSize}) {
  //   double scaleFactor = getScaleFactor(context: context, layout: layout);
  // }

  // double getScaleFactor({required BuildContext context, required int layout}) {
  //   double widthOfScreen = MediaQuery.of(context).size.width;
  //   double scaleFactor = widthOfScreen / layout;
  //   return scaleFactor;
  // }
}
