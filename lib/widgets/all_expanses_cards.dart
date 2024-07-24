import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expanses_card_model.dart';
import 'package:responsive_dash_board/utils/assets.dart';
import 'package:responsive_dash_board/widgets/expanses_card.dart';

class AllExpansesCards extends StatefulWidget {
  const AllExpansesCards({super.key});

  @override
  State<AllExpansesCards> createState() => _AllExpansesCardsState();
}

class _AllExpansesCardsState extends State<AllExpansesCards> {
  final List<ExpansesCardModel> cards = [
    ExpansesCardModel(iconImage: Assets.imagesBalance, type: 'Balance'),
    ExpansesCardModel(iconImage: Assets.imagesIncom, type: 'Incom'),
    ExpansesCardModel(iconImage: Assets.imagesExpanses, type: 'Expanses'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (index) => Padding(
            padding: (index != 2)
                ? const EdgeInsets.only(right: 12)
                : EdgeInsets.zero,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ExpansesCard(
                isActive: (currentIndex == index),
                cardModel: cards[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
