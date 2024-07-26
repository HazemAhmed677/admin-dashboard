import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // print(
        //   'MediaQuery = ${MediaQuery.sizeOf(context).width}',
        // );
        // print(
        //   'Layout = ${constraints.maxWidth}',
        // );
        if (constraints.maxWidth < SizeConfig.mobileLayout) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.tabletLayout) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
