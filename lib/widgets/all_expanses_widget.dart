import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_cards.dart';
import 'package:responsive_dash_board/widgets/all_expanses_word.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widget.dart';

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansesSection(),
          QuickInvoiceWidget(),
        ],
      ),
    );
  }
}

class ExpansesSection extends StatelessWidget {
  const ExpansesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
