import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/expanses_card_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({
    super.key,
    required this.cardModel,
    required this.isActive,
  });

  final ExpansesCardModel cardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: SvgPicture.asset(
            cardModel.iconImage,
            colorFilter: (isActive)
                ? const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  )
                : const ColorFilter.mode(
                    AppColors.secondPrimary, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios,
            color: (isActive) ? AppColors.white : AppColors.primary,
          ),
        ),
      ],
    );
  }
}
