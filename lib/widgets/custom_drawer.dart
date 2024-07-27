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
          (MediaQuery.of(context).orientation == Orientation.portrait) ? 0 : 4,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 22,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  (MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout &&
                          MediaQuery.of(context).orientation ==
                              Orientation.landscape)
                      ? const EdgeInsets.only(left: 42)
                      : const EdgeInsets.only(left: 22.0),
              child: const UserProfileColumn(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:
                  (MediaQuery.sizeOf(context).width < SizeConfig.tabletLayout &&
                          MediaQuery.of(context).orientation ==
                              Orientation.landscape)
                      ? const EdgeInsets.only(left: 42)
                      : const EdgeInsets.only(left: 22.0),
              child: const UserProfileBottomColumn(),
            ),
          )
        ],
      ),
    );
  }
}
