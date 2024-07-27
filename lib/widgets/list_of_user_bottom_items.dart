import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/user_item.dart';

class ListOfUserBottomItems extends StatefulWidget {
  const ListOfUserBottomItems({super.key});

  @override
  State<ListOfUserBottomItems> createState() => _ListOfUserBottomItemsState();
}

class _ListOfUserBottomItemsState extends State<ListOfUserBottomItems> {
  final List<UserModel> bottomItems = [
    UserModel(iconImage: Assets.imagesSetting, text: 'Setting system'),
    UserModel(iconImage: Assets.imagesLogout, text: 'Logout account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserItem(userItem: bottomItems[0]),
        const SizedBox(
          height: 8,
        ),
        UserItem(userItem: bottomItems[1]),
      ],
    );
  }
}
