import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/AppImages.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_drawer.dart';
import 'package:my_portfolio/feature/presentation/common/common_bottom_nav_bar.dart';
import 'package:my_portfolio/feature/presentation/views/education_screen/educationItemTile.dart';

import '../../common/common_app_bar.dart';

class EducationScreenView extends StatefulWidget {
  const EducationScreenView({super.key});

  @override
  State<EducationScreenView> createState() => _EducationScreenViewState();
}

class _EducationScreenViewState extends State<EducationScreenView> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      centerTitle: true,
      alwaysShowLeadingAndAction: true,
      backgroundColor: Colors.white,
      alwaysShowTitle: true,
      fullyStretchable: false,
      appBarColor: Colors.blue.shade900,
      floatingActionButton: const Icon(Icons.arrow_upward_outlined),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      drawer: const AppDrawer(
        selectedIndex: 1,
      ),
      bottomNavigationBar: const CommonBottomNavigationBar(
        selectedIndex: 1,
      ),
      title: Text(
        AppStrings.educationTitle,
        style: AppStyles.dashboardViewTextStyle(),
      ),
      headerWidget: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImages.app_bar_bg),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue.shade900,
                const Color.fromARGB(255, 0, 0, 35)
              ]),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          margin: EdgeInsets.only(top: 30.h),
        ),
      ),
      body: [
        EducationItemTile(),
        EducationItemTile(),
        EducationItemTile(),
      ],
    );
  }
}
