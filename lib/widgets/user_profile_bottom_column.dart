import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
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
        child: SizedBox(
          height: 14,
        ),
      ),
      (MediaQuery.of(context).orientation == Orientation.landscape &&
              MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout)
          ? const ListOfBottomItemsForLandscape()
          : const ListOfUserBottomItems(),
      const SizedBox(
        height: 30,
      ),
    ]);
  }
}
