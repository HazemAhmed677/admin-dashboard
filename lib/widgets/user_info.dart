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
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SvgPicture.asset(image),
      ),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        subTitle,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
