import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/user_profile_bottom_column.dart';
import 'package:responsive_dash_board/widgets/user_profile_column.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      rightPadding: 20,
      leftPadding:
          (MediaQuery.of(context).orientation == Orientation.portrait) ? 28 : 4,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height:
                  (MediaQuery.sizeOf(context).width < SizeConfig.mobileLayout)
                      ? 0
                      : 8,
            ),
          ),
          const SliverToBoxAdapter(
            child: SafeArea(
              child: UserProfileColumn(),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: UserProfileBottomColumn(),
          )
        ],
      ),
    );
  }
}
