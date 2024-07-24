import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expanses_section.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widget.dart';

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      rightPadding: 20,
      leftPadding: 16,
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansesSection(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 22.0,
                    bottom: 14,
                  ),
                  child: QuickInvoiceWidget(),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
