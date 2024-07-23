import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/user_profile_column.dart';

import 'list_of_user_bottom_items.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 28.0,
                right: 20,
              ),
              child: UserProfileColumn(),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Column(children: [
            Expanded(
              child: SizedBox(
                height: 20,
              ),
            ),
            ListOfUserBottomItems(),
            SizedBox(
              height: 20,
            ),
          ]),
        )
      ],
    );
  }
}
