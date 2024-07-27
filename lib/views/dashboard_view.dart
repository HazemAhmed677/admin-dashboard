import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/custom_app_bar.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_body.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      drawer: SizedBox(
        width: width * 0.7,
        child: const CustomDrawer(),
      ),
      appBar: (width < SizeConfig.mobileLayout)
          ? CustomAppBar(
              scaffoldKey: scaffoldKey,
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: const DashBoardBody(),
    );
  }
}
