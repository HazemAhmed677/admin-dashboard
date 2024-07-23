import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/text_field_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class GridVewOfFields extends StatefulWidget {
  const GridVewOfFields({super.key});

  @override
  State<GridVewOfFields> createState() => _GridVewOfFieldsState();
}

class _GridVewOfFieldsState extends State<GridVewOfFields> {
  final List<TextFieldModel> fields = [
    TextFieldModel(
      text: 'Customer Name',
      hint: 'Type customer name',
      style: AppStyles.style1Medium16.copyWith(
        color: const Color(0xffAAAAAA),
      ),
    ),
    TextFieldModel(
      text: 'Customer Email',
      hint: 'Type customer email',
      style: AppStyles.style1Medium16.copyWith(
        color: const Color(0xffAAAAAA),
      ),
    ),
    TextFieldModel(
      text: 'Item Name',
      hint: 'Type item name',
      style: AppStyles.style1Medium16.copyWith(
        color: const Color(0xffAAAAAA),
      ),
    ),
    TextFieldModel(
      text: 'Customer Mount',
      hint: 'USD',
      style: AppStyles.style1Medium16.copyWith(
        color: const Color(0xffAAAAAA),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: fields.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CustomTextField(
          textFieldModel: fields[index],
        );
      },
    );
  }
}
