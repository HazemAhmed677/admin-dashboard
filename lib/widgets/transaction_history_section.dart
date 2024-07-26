import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_chart.dart';
import 'package:responsive_dash_board/widgets/pi_chart_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_column.dart';
import 'package:responsive_dash_board/widgets/transaction_history_row.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryRow(),
        SizedBox(
          height: 8,
        ),
        TracsactionHistoryColumn(),
        SizedBox(
          height: 16,
        ),
        PiChartHeader(),
        SizedBox(
          height: 16,
        ),
        CustomChartSection(),
      ],
    );
  }
}
