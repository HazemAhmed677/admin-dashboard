import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String title, price, subTitel;
  final Color color;

  TransactionHistoryModel({
    required this.title,
    required this.subTitel,
    required this.price,
    required this.color,
  });
}
