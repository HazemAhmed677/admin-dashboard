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
    return Row(
      children: cards.asMap().entries.map((ele) {
        int index = ele.key;
        var item = ele.value;
        return Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: ExpansesCard(
                    isActive: (currentIndex == index),
                    cardModel: item,
                  ),
                ),
              ),
              (index != 2)
                  ? const SizedBox(
                      width: 8,
                    )
                  : const SizedBox(),
            ],
          ),
        );
      }).toList(),
    );
  }
}
