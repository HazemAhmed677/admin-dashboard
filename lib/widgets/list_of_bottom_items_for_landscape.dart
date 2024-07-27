import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/user_item_for_landscape.dart';

class ListOfBottomItemsForLandscape extends StatefulWidget {
  const ListOfBottomItemsForLandscape({super.key});

  @override
  State<ListOfBottomItemsForLandscape> createState() =>
      _ListOfBottomItemsForLandscapeState();
}

class _ListOfBottomItemsForLandscapeState
    extends State<ListOfBottomItemsForLandscape> {
  final List<UserModel> bottomItems = [
    UserModel(iconImage: Assets.imagesSetting, text: 'Setting system'),
    UserModel(iconImage: Assets.imagesLogout, text: 'Logout account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserItemForLandscape(userItem: bottomItems[0]),
        const SizedBox(
          height: 12,
        ),
        UserItemForLandscape(userItem: bottomItems[1]),
      ],
    );
  }
}
