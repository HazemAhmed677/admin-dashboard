import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/list_of_user_items.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class UserProfileColumn extends StatelessWidget {
  const UserProfileColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfo(
          image: Assets.imagesAvatar1,
          title: 'Lekan Okeowo',
          subTitle: 'demo@gmail.com',
        ),
        SizedBox(
          height: 28,
        ),
        ListOfUserItems(),
      ],
    );
  }
}
