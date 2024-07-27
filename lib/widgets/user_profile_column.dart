import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/list_of_user_items.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';
import 'package:responsive_dash_board/widgets/user_info_for_landscape.dart';

class UserProfileColumn extends StatelessWidget {
  const UserProfileColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (MediaQuery.of(context).orientation == Orientation.landscape &&
                MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout)
            ? const UserInfoForLandscape(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              )
            : const UserInfo(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
        SizedBox(
          height: (MediaQuery.sizeOf(context).width < SizeConfig.mobileLayout)
              ? 22
              : 28,
        ),
        const ListOfUserItems(),
      ],
    );
  }
}
