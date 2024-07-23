import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ListUserItem extends StatelessWidget {
  const ListUserItem({super.key, required this.userItem});
  final UserItem userItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        userItem.iconImage,
      ),
      title: Text(
        userItem.text,
        style: AppStyles.styleRegular16.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
