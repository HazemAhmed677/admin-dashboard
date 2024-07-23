import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.text, required this.hint, required this.style});
  final String text;
  final String hint;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: AppStyles.style1Medium16,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: style,
          ),
        ),
      ],
    );
  }
}
