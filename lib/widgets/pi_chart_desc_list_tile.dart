import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/pi_chart_data_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class PiChartDescListTile extends StatelessWidget {
  const PiChartDescListTile({super.key, required this.piChartDataModel});
  final PiChartDataModel piChartDataModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
        height: 16,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: piChartDataModel.color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          piChartDataModel.title,
          style: AppStyles.styleRegular16.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
      trailing: Text(
        '${piChartDataModel.prec}%',
        style: AppStyles.style1Medium16.copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
