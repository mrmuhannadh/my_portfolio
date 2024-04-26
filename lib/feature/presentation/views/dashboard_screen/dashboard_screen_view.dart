import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_bar.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_drawer.dart';

class DashboardScreenView extends StatefulWidget {
  const DashboardScreenView({super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: const CommonAppBar(
        title: AppStrings.profileTile,
      ),
      drawer: const AppDrawer(
        selectedIndex: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.greeting,
              style: AppStyles.personalDetailsTextStyle(
                fontSize: 35.sp,
              ),
            ),
            Text(
              AppStrings.i_am,
              style: AppStyles.personalDetailsTextStyle(
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
