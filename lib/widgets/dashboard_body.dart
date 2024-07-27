import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/widgets/tablet_layout.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
    // return DesktopLayout();
  }
}
