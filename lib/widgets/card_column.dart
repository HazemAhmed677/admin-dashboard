import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dots.dart';
import 'package:responsive_dash_board/widgets/my_card_container.dart';

class CardColumn extends StatelessWidget {
  const CardColumn({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });
  final PageController pageController;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (index) {
            return const Padding(
              padding: EdgeInsets.only(
                right: 12,
              ),
              child: MyCardContainer(),
            );
          }),
        ),
        const SizedBox(
          height: 19,
        ),
        CustomDots(
          index: currentIndex,
        ),
      ],
    );
  }
}
