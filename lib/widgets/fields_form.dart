import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/text_field_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class FieldsForm extends StatefulWidget {
  const FieldsForm({super.key});

  @override
  State<FieldsForm> createState() => _FieldsFormState();
}

class _FieldsFormState extends State<FieldsForm> {
  @override
  Widget build(BuildContext context) {
    final List<TextFieldModel> fields = [
      TextFieldModel(
        text: 'Customer Name',
        hint: 'Type customer name',
        style: AppStyles.style1Medium16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      TextFieldModel(
        text: 'Customer Email',
        hint: 'Type customer email',
        style: AppStyles.style1Medium16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      TextFieldModel(
        text: 'Item Name',
        hint: 'Type item name',
        style: AppStyles.style1Medium16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      TextFieldModel(
        text: 'Customer Mount',
        hint: 'USD',
        style: AppStyles.style1Medium16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
    ];
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              textFieldModel: fields[0],
            )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomTextField(
              textFieldModel: fields[1],
            )),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              textFieldModel: fields[2],
            )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomTextField(
              textFieldModel: fields[3],
            )),
          ],
        ),
      ],
    );
  }
}
