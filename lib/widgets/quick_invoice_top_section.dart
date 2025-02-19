import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/users_list_view.dart';

class QuickInvoiceTopSection extends StatelessWidget {
  const QuickInvoiceTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 24,
        ),
        const LatestTransactions(),
        const SizedBox(
          height: 12,
        ),
        const UsersListView(),
      ],
    );
  }
}
