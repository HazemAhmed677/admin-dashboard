import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/my_card_list_tile.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondPrimary,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesMask,
            ),
          ),
        ),
        child: const Column(
          children: [
            MyCardListTile(),
          ],
        ),
      ),
    );
  }
}
