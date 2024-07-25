import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpansesWord extends StatelessWidget {
  const AllExpansesWord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'All Expanses',
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
              width: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 6,
              ),
              child: Transform.rotate(
                alignment: Alignment.center,
                angle: -1.5708,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
