import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/main_container.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      rightPadding: 20,
      leftPadding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          // PageView.builder(
          //   itemCount: 3,
          //   itemBuilder: (BuildContext context, int index) => ,)
        ],
      ),
    );
  }
}
