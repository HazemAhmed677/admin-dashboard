import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dashboard_body.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashBoardBody(),
    );
  }
}
