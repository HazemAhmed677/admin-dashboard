import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.style1Medium16(context),
        ),
        const Icon(
          Icons.add,
          color: AppColors.secondPrimary,
        ),
      ],
    );
  }
}
