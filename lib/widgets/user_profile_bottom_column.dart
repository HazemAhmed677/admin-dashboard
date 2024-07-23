import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/list_of_user_bottom_items.dart';

class UserProfileBottomColumn extends StatelessWidget {
  const UserProfileBottomColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(
        child: SizedBox(),
      ),
      ListOfUserBottomItems(),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
