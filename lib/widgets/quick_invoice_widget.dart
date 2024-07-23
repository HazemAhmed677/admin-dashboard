import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_top_section.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          QuickInvoiceTopSection(),
        ],
      ),
    );
  }
}
