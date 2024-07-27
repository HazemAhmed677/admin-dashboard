import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/custom_chart.dart';
import 'package:responsive_dash_board/widgets/custom_chart_2.dart';
import 'package:responsive_dash_board/widgets/pi_chart_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_column.dart';
import 'package:responsive_dash_board/widgets/transaction_history_row.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: Column(
        children: [
          const TransactionHistoryRow(),
          const SizedBox(
            height: 8,
          ),
          const TracsactionHistoryColumn(),
          const SizedBox(
            height: 16,
          ),
          const PiChartHeader(),
          SizedBox(
            height: ((width >= 1250 && width < 1345) ||
                    (width >= 395 && width < SizeConfig.tabletLayout))
                ? 0
                : 12,
          ),
          ((width >= 1250 && width < SizeConfig.desktopLayout) ||
                  (width <= 320))
              ? const CustomChart2()
              : const CustomChartSection(),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
