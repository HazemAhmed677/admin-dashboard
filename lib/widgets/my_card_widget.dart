import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/card_section.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

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
      rightPadding: 20,
      leftPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardSection(
            pageController: pageController,
            currentIndex: currentIndex,
          ),
          const SizedBox(
            height: 32,
          ),
          const TransactionHistorySection(),
        ],
      ),
    );
  }
}
