import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/list_of_user_items.dart';
import 'package:responsive_dash_board/widgets/list_uset_item.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.0, right: 20, top: 8),
            child: UserInfo(
              image: Assets.imagesAvatar1,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SizedBox(
            height: 28,
          ),
          ListOfUserItems(),
        ],
      ),
    );
  }
}
