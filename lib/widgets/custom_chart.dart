import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class CustomChartSection extends StatefulWidget {
  const CustomChartSection({super.key});

  @override
  State<CustomChartSection> createState() => _CustomChartSectionState();
}

class _CustomChartSectionState extends State<CustomChartSection> {
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
        sections: List.generate(4, (index) {
          return PieChartSectionData(
            value: 22,
            color: (index == 0)
                ? const Color(0xffE2DECD)
                : (index == 1)
                    ? AppColors.primary
                    : (index == 2)
                        ? AppColors.secondPrimary
                        : const Color(0xff208CC8),
            showTitle: false,
            radius: (currentIndex == index) ? 50 : 40,
          );
        }),
      ),
    );
  }
}
