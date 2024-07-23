import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/user_profile_bottom_column.dart';
import 'package:responsive_dash_board/widgets/user_profile_column.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserProfileColumn(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: UserProfileBottomColumn(),
          )
        ],
      ),
    );
  }
}
