import 'package:flutter/material.dart';
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bottomItems.length,
      itemBuilder: (context, index) => UserItem(
        userItem: bottomItems[index],
      ),
    );
  }
}
