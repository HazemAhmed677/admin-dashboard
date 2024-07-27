import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/list_of_bottom_items_for_landscape.dart';
import 'package:responsive_dash_board/widgets/list_of_user_bottom_items.dart';

class UserProfileBottomColumn extends StatelessWidget {
  const UserProfileBottomColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Expanded(
        child: SizedBox(),
      ),
      (MediaQuery.of(context).orientation == Orientation.portrait)
          ? const ListOfUserBottomItems()
          : SafeArea(child: const ListOfBottomItemsForLandscape()),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
