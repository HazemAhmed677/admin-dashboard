import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryRow extends StatelessWidget {
  const TransactionHistoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: AppColors.primary,
          ),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.style1Medium16(context).copyWith(
            color: AppColors.secondPrimary,
          ),
        ),
      ],
    );
  }
}
