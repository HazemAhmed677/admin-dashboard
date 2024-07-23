import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_cards.dart';
import 'package:responsive_dash_board/widgets/all_expanses_word.dart';

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpansesWord(),
        SizedBox(
          height: 28,
        ),
        AllExpansesCards(),
      ],
    );
  }
}
