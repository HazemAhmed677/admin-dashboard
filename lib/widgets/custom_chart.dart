import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/pi_chart_data_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/widgets/pi_chart_desc_list_tile.dart';

class CustomChartSection extends StatefulWidget {
  const CustomChartSection({super.key});

  @override
  State<CustomChartSection> createState() => _CustomChartSectionState();
}

class _CustomChartSectionState extends State<CustomChartSection> {
  final List<PiChartDataModel> item = [
    PiChartDataModel(
      title: 'Design service',
      prec: '40',
      color: const Color(0xff208CC8),
    ),
    PiChartDataModel(
      title: 'Design product',
      prec: '25',
      color: AppColors.secondPrimary,
    ),
    PiChartDataModel(
      title: 'Design royality',
      prec: '20',
      color: AppColors.primary,
    ),
    PiChartDataModel(
      title: 'Other',
      prec: '22',
      color: const Color(0xffE2DECD),
    ),
  ];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  // enabled: true,
                  touchCallback: (p0, pieTouchResponse) {
                    setState(
                      () {
                        currentIndex = pieTouchResponse
                                ?.touchedSection?.touchedSectionIndex ??
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
                      value: (index == 0)
                          ? 22
                          : (index == 1)
                              ? 20
                              : (index == 2)
                                  ? 25
                                  : 40,
                      color: (index == 0)
                          ? const Color(0xffE2DECD)
                          : (index == 1)
                              ? AppColors.primary
                              : (index == 2)
                                  ? AppColors.secondPrimary
                                  : const Color(0xff208CC8),
                      showTitle: false,
                      radius: (currentIndex == index) ? 34 : 28,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            children: List.generate(4, (index) {
              return PiChartDescListTile(
                piChartDataModel: item[index],
              );
            }),
          ),
        )
      ],
    );
  }
}
