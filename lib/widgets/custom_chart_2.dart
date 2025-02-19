import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class CustomChart2 extends StatefulWidget {
  const CustomChart2({super.key});

  @override
  State<CustomChart2> createState() => _CustomChart2State();
}

class _CustomChart2State extends State<CustomChart2> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              // enabled: true,
              touchCallback: (p0, pieTouchResponse) {
                setState(
                  () {
                    currentIndex =
                        pieTouchResponse?.touchedSection?.touchedSectionIndex ??
                            -1;
                  },
                );
              },
            ),
            sectionsSpace: 0,
            sections: List.generate(
              4,
              (index) {
                return PieChartSectionData(
                  titlePositionPercentageOffset:
                      (currentIndex == 0 || currentIndex == 2)
                          ? 2.1
                          : (currentIndex == 1)
                              ? 1.4
                              : null,
                  showTitle: true,
                  titleStyle: TextStyle(
                    color: (currentIndex == index)
                        ? Colors.black
                        : AppColors.white,
                  ),
                  value: (index == 0)
                      ? 22
                      : (index == 1)
                          ? 20
                          : (index == 2)
                              ? 25
                              : 40,
                  title: (index == 0)
                      ? (currentIndex == index)
                          ? 'Design service'
                          : (currentIndex == -1)
                              ? '22%'
                              : null
                      : (index == 1)
                          ? (currentIndex == index)
                              ? 'Design product'
                              : (currentIndex == -1)
                                  ? '20%'
                                  : null
                          : (index == 2)
                              ? (currentIndex == index)
                                  ? 'Product royality'
                                  : (currentIndex == -1)
                                      ? '25%'
                                      : null
                              : (currentIndex == index)
                                  ? 'Other'
                                  : (currentIndex == -1)
                                      ? '40%'
                                      : null,
                  color: (index == 0)
                      ? const Color(0xffE2DECD)
                      : (index == 1)
                          ? AppColors.primary
                          : (index == 2)
                              ? AppColors.secondPrimary
                              : const Color(0xff208CC8),
                  radius: (currentIndex == index) ? 38 : 32,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
