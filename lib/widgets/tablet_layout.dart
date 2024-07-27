import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_and_my_card_widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 14,
        bottom: 2,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: AllExpansesAndMyCardWidgets(),
          ),
        ],
      ),
    );
  }
}
