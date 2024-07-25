import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryRow(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

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
          style: AppStyles.styleSemiBold18.copyWith(
            color: AppColors.primary,
          ),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.style1Medium16.copyWith(
            color: AppColors.secondPrimary,
          ),
        ),
      ],
    );
  }
}
