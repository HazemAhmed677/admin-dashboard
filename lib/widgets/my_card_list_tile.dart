import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/assets.dart';

class MyCardListTile extends StatelessWidget {
  const MyCardListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: Text(
            'Name Card',
            style: AppStyles.styleSemiBold16.copyWith(
              color: AppColors.semiWhite,
            ),
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(left: 24, top: 4.0),
          child: Text(
            'Syah Bandi',
            style: AppStyles.styleMedium20,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: SvgPicture.asset(
            Assets.imagesGallery,
          ),
        ),
      ),
    );
  }
}
