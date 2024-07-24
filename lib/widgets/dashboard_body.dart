import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_widget.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 14, bottom: 16),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 2,
            child: AllExpansesWidget(),
          ),
          Expanded(
            flex: 2,
            child: MyCardWidget(),
          )
        ],
      ),
    );
  }
}
