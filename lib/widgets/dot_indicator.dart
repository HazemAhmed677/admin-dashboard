import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (isActive) ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (isActive) ? AppColors.secondPrimary : const Color(0xffE8E8E8),
      ),
    );
  }
}
