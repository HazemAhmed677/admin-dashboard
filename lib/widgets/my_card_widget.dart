import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_chart.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      rightPadding: 10,
      leftPadding: 0,
      child: CustomChartSection(),
      // child: CustomScrollView(
      //   slivers: [
      //     SliverFillRemaining(
      //       hasScrollBody: false,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           CardSection(
      //             pageController: pageController,
      //             currentIndex: currentIndex,
      //           ),
      //           const SizedBox(
      //             height: 32,
      //           ),
      //           const TransactionHistorySection(),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
