import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/my_card_list_tile.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: (width < SizeConfig.mobileLayout)
          ? 420 / 215
          : (width < SizeConfig.tabletLayout)
              ? 3.2
              : 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondPrimary,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesMask,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MyCardListTile(),
            const Flexible(
              child: SizedBox(
                height: 42,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24(context).copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 27,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
