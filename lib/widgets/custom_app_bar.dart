import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.sizeOf(context).height * 0.06;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: (MediaQuery.of(context).orientation == Orientation.landscape)
            ? hight * 2
            : hight,
      ),
      child: Container(
        height: hight,
        decoration: const BoxDecoration(
          color: AppColors.secondPrimary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            padding: const EdgeInsets.all(14),
            constraints: const BoxConstraints(),
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
