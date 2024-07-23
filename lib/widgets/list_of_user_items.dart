import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/user_item.dart';

class ListOfUserItems extends StatefulWidget {
  const ListOfUserItems({
    super.key,
  });

  @override
  State<ListOfUserItems> createState() => _ListOfUserItemsState();
}

class _ListOfUserItemsState extends State<ListOfUserItems> {
  final List<UserModel> items = [
    UserModel(iconImage: Assets.imagesDashboard, text: 'Dashboard'),
    UserModel(iconImage: Assets.imagesmyTransaction, text: 'My Transaction'),
    UserModel(iconImage: Assets.imagesStatistics, text: 'Statistics'),
    UserModel(iconImage: Assets.imagesWallet, text: 'Wallet Account'),
    UserModel(iconImage: Assets.imagesInvestment, text: 'My Investments'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: UserItem(
            isActive: (currentIndex == index),
            userItem: items[index],
          ),
        ),
      ),
    );
  }
}
