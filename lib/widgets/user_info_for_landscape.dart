import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoForLandscape extends StatelessWidget {
  const UserInfoForLandscape({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 20),
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipOval(
              child: SvgPicture.asset(
                image,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                subTitle,
                style: AppStyles.styleRegular12(context),
              ),
            ),
          ],
        )
      ],
    );
  }
}
