import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_cards.dart';
import 'package:responsive_dash_board/widgets/all_expanses_word.dart';

class ExpansesSection extends StatelessWidget {
  const ExpansesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AllExpansesWord(),
        SizedBox(
          height: 16,
        ),
        AllExpansesCards(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
