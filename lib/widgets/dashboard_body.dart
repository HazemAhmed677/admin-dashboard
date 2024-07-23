import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets.dart';
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
          UserInfo(
            image: Assets.imagesAvatar1,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          )
        ],
      ),
    );
  }
}
