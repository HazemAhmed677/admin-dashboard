import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expanses_card_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expanses_cards_header.dart';

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
    return Card(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: (isActive) ? AppColors.secondPrimary : AppColors.white,
            border: Border.all(
              width: 1,
              color: AppColors.semiWhite,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllExpansesHeader(
                cardModel: cardModel,
                isActive: isActive,
              ),
              const SizedBox(
                height: 34,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  cardModel.type,
                  style: AppStyles.styleSemiBold16(context).copyWith(
                    color: (isActive) ? AppColors.white : AppColors.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'April 2022',
                  style: AppStyles.styleRegular14(context).copyWith(
                    color:
                        (isActive) ? AppColors.semiWhite : Colors.grey.shade400,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  r'$20,129',
                  style: AppStyles.styleSemiBold24(context).copyWith(
                    color:
                        (isActive) ? AppColors.white : AppColors.secondPrimary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
