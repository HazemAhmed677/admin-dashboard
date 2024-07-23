import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Invoice',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.style1Medium16,
          ),
        ],
      ),
    );
  }
}
