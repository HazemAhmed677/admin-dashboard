import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_item_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
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
          UserInfo(
            image: Assets.imagesAvatar1,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 28,
          ),
          ListOfUserItems()
        ],
      ),
    );
  }
}

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
          itemBuilder: (context, index) => ListUserItem(
                userItem: items[index],
              )),
    );
  }
}
