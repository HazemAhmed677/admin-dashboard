import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        transactionHistoryModel.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        transactionHistoryModel.subTitel,
        style: AppStyles.styleRegular14(context).copyWith(
          color: AppColors.grey,
        ),
      ),
      trailing: Text(
        transactionHistoryModel.price,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: transactionHistoryModel.color,
        ),
      ),
    );
  }
}
