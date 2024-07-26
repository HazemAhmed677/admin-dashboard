import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction_list_tile.dart';

class TracsactionHistoryColumn extends StatefulWidget {
  const TracsactionHistoryColumn({super.key});

  @override
  State<TracsactionHistoryColumn> createState() =>
      _TracsactionHistoryColumnState();
}

class _TracsactionHistoryColumnState extends State<TracsactionHistoryColumn> {
  final List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      subTitel: '13 Apr, 2022',
      price: r'$20.129',
      color: const Color(0xffF3735E),
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      subTitel: '13 Apr, 2022 at 3:30 PM',
      price: r'$2000',
      color: const Color(0xff7DD97B),
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      subTitel: '13 Apr, 2022 at 3:30 PM',
      price: r'$20.129',
      color: const Color(0xff7DD97B),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
          children: List.generate(
        3,
        (index) => Padding(
          padding: (index == 1)
              ? const EdgeInsets.symmetric(vertical: 8.0)
              : EdgeInsets.zero,
          child: TransactionListTile(
            transactionHistoryModel: items[index],
          ),
        ),
      )),
    );
  }
}
