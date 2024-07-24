import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/expanses_card_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ExpansesCard extends StatelessWidget {
  const ExpansesCard({
    super.key,
    required this.cardModel,
    required this.isActive,
  });
  final ExpansesCardModel cardModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (isActive) ? AppColors.secondPrimary : AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  cardModel.iconImage,
                  colorFilter: (isActive)
                      ? const ColorFilter.mode(AppColors.white, BlendMode.srcIn)
                      : const ColorFilter.mode(
                          AppColors.secondPrimary, BlendMode.srcIn),
                ),
                const SizedBox(
                  width: 56,
                ),
                Transform.rotate(
                  angle: 3.14159,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: (isActive) ? AppColors.white : AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              cardModel.type,
              style: AppStyles.styleSemiBold16.copyWith(
                color: (isActive) ? AppColors.white : AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'April 2022',
              style: AppStyles.styleRegular14.copyWith(
                color: AppColors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              r'$20,129',
              style: AppStyles.styleSemiBold24.copyWith(
                color: (isActive) ? AppColors.white : AppColors.secondPrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
