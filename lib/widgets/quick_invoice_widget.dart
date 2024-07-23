import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Invoice',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.style1Medium16,
          ),
          UsersListView(),
        ],
      ),
    );
  }
}

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
        subTitle: 'Madraniadi20@gmail'),
    UserInfo(
        image: Assets.imagesAvatar3,
        title: 'Josua Nunito',
        subTitle: 'Josua Nunito@gmail'),
    UserInfo(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: users
          .map(
            (e) => Expanded(
              child: e,
            ),
          )
          .toList(),
    );
  }
}
