import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/expanses_card.dart';

class AllExpansesCards extends StatelessWidget {
  const AllExpansesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansesCard(
      image: Assets.imagesBalance,
      type: 'Card',
    );
  }
}
