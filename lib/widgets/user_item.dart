import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.userItem,
    this.isActive,
  });
  final bool? isActive;
  final UserModel userItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: (isActive != null)
              ? Border(
                  right: BorderSide(
                      width: 3,
                      color: (isActive!)
                          ? AppColors.secondPrimary
                          : Colors.transparent),
                )
              : null),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset(
          userItem.iconImage,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            userItem.text,
            style: AppStyles.styleRegular16(context).copyWith(
              color: (isActive ?? false)
                  ? AppColors.secondPrimary
                  : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
