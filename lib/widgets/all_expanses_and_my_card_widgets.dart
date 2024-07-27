import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widget.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/my_card_widget.dart';

class AllExpansesAndMyCardWidgets extends StatelessWidget {
  const AllExpansesAndMyCardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              AllExpansesWidget(),
              Expanded(child: MyCardWidget()),
            ],
          ),
        ),
      ],
    );
  }
}
