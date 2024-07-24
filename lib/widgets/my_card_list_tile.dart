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
    return ListTile(
      title: Text(
        'Name Card',
        style: AppStyles.styleRegular16.copyWith(
          color: AppColors.white,
        ),
      ),
      subtitle: const Text(
        'Syah Bandi',
        style: AppStyles.styleMedium20,
      ),
      trailing: SvgPicture.asset(
        Assets.imagesGallery,
      ),
    );
  }
}
