import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/text_field_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textFieldModel});
  final TextFieldModel textFieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFieldModel.text,
          style: AppStyles.style1Medium16(context),
        ),
        TextField(
          decoration: InputDecoration(
              hintText: textFieldModel.hint,
              hintStyle: textFieldModel.style,
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
              fillColor: const Color(0xffFAFAFA),
              filled: true),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
