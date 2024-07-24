import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/custom_action_button.dart';
import 'package:responsive_dash_board/widgets/fields_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_top_section.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          QuickInvoiceTopSection(),
          Divider(
            endIndent: 28,
            indent: 28,
            height: 48,
          ),
          FieldsForm(),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomActionButton(
                    text: 'Add more details',
                    background: AppColors.white,
                    textColor: AppColors.secondPrimary),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: CustomActionButton(
                    text: 'Send Money',
                    background: AppColors.secondPrimary,
                    textColor: AppColors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
