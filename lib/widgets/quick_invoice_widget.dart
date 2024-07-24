import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/fields_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_top_section.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        QuickInvoiceTopSection(),
        SizedBox(
          height: 32,
        ),
        FieldsForm(),
      ],
    );
  }
}
