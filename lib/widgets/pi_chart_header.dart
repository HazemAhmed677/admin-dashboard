import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class PiChartHeader extends StatelessWidget {
  const PiChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.style1Medium16(context),
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
