import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {super.key,
      required this.text,
      required this.background,
      required this.textColor});
  final String text;
  final Color background;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: AppStyles.styleSemiBold18(context).copyWith(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
