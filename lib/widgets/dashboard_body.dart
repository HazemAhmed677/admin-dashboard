import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/user_profile_bottom_column.dart';
import 'package:responsive_dash_board/widgets/user_profile_column.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MainContainer(
            child: UserProfileColumn(),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: UserProfileBottomColumn(),
        )
      ],
    );
  }
}
