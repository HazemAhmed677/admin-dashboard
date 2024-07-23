import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.userItem,
  });
  final UserModel userItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        userItem.iconImage,
      ),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            userItem.text,
            style: AppStyles.styleRegular16.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
