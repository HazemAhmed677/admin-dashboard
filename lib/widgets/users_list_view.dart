import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class UsersListView extends StatefulWidget {
  const UsersListView({super.key});

  @override
  State<UsersListView> createState() => _UsersListViewState();
}

class _UsersListViewState extends State<UsersListView> {
  final List<UserInfo> users = const [
    UserInfo(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail.com'),
    UserInfo(
        image: Assets.imagesAvatar3,
        title: 'Josua Nunito',
        subTitle: 'Josua Nunito@gmail'),
    UserInfo(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail.com'),
    UserInfo(
        image: Assets.imagesAvatar3,
        title: 'Josua Nunito',
        subTitle: 'Josua Nunito@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    ////pnjijkkopjo
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: users.asMap().entries.map((ele) {
          var item = ele.value;
          return Card(child: IntrinsicWidth(child: item));
        }).toList(),
      ),
    );
  }
}
