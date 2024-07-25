import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            setState(() {
              currentIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: (currentIndex == 0) ? 50 : 40,
          ),
          PieChartSectionData(
            value: 20,
            color: AppColors.primary,
            showTitle: false,
            radius: (currentIndex == 1) ? 50 : 40,
          ),
          PieChartSectionData(
            value: 25,
            color: AppColors.secondPrimary,
            showTitle: false,
            radius: (currentIndex == 2) ? 50 : 40,
          ),
          PieChartSectionData(
            value: 40,
            color: const Color(0xff208CC8),
            showTitle: false,
            radius: (currentIndex == 3) ? 50 : 40,
          ),
        ],
      ),
    );
  }
}
