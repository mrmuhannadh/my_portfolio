import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/AppImages.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const CommonAppBar({super.key, required this.title});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImages.app_bar_bg),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.blue.shade900, Colors.blue]),
        ),
      ),
      leading: Transform.rotate(
        angle: pi,
        child: IconButton(
          icon: Image.asset(
            AppImages.drawerButton,
            width: 48,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title: Text(
        widget.title,
        style: AppStyles.dashboardViewTextStyle(),
      ),
    );
  }
}
