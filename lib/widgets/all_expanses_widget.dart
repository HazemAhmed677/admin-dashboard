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
      leftPadding: 20,
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
