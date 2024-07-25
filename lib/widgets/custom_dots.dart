import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dot_indicator.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (idx) => Padding(
          padding: (idx == 1)
              ? const EdgeInsets.symmetric(horizontal: 8.0)
              : EdgeInsets.zero,
          child: DotIndicator(
            isActive: (idx == index),
          ),
        ),
      ),
    );
  }
}
