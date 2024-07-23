import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/list_uset_item.dart';

class ListOfUserItems extends StatefulWidget {
  const ListOfUserItems({
    super.key,
  });

  @override
  State<ListOfUserItems> createState() => _ListOfUserItemsState();
}

class _ListOfUserItemsState extends State<ListOfUserItems> {
  final List<UserItem> items = [
    UserItem(iconImage: Assets.imagesDashboard, text: 'Dashboard'),
    UserItem(iconImage: Assets.imagesmyTransaction, text: 'My Transaction'),
    UserItem(iconImage: Assets.imagesStatistics, text: 'Statistics'),
    UserItem(iconImage: Assets.imagesWallet, text: 'Wallet Account'),
    UserItem(iconImage: Assets.imagesInvestment, text: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: ListUserItem(
            userItem: items[index],
          ),
        ),
      ),
    );
  }
}
