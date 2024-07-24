import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.child,
    required this.rightPadding,
    required this.leftPadding,
  });
  final Widget child;
  final double rightPadding;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
        ),
        child: child,
      ),
    );
  }
}
