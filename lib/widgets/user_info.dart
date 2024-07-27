import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
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
    return ListTile(
      leading: ClipOval(
        child: SvgPicture.asset(
          image,
        ),
      ),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
