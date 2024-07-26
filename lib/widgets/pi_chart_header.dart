import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class PiChartHeader extends StatelessWidget {
  const PiChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Row(
          children: [
            const Text(
              'Monthly',
              style: AppStyles.style1Medium16,
            ),
            const SizedBox(
              width: 12,
            ),
            Transform.rotate(
                angle: -1.5708,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: AppColors.primary,
                )),
          ],
        )
      ],
    );
  }
}
