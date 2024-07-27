import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_and_my_card_widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
        bottom: 2,
      ),
      child: Row(
        children: [
          Expanded(
              flex: (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 1
                  : 2,
              child: const CustomDrawer()),
          Expanded(
            flex: (MediaQuery.of(context).orientation == Orientation.portrait)
                ? 3
                : 4,
            child: const AllExpansesAndMyCardWidgets(),
          ),
        ],
      ),
    );
  }
}
