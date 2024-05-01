import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:my_portfolio/core/utils/AppImages.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_drawer.dart';
import 'package:my_portfolio/feature/presentation/common/common_bottom_nav_bar.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/certifications.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/language_skills.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/soft_skills_grid.dart';

class DashboardScreenView extends StatefulWidget {
  const DashboardScreenView({super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {
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
        selectedIndex: 0,
      ),
      bottomNavigationBar: const CommonBottomNavigationBar(
        selectedIndex: 0,
      ),
      title: Text(
        AppStrings.profileTile,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.quote,
                style: TextStyle(
                  fontFamily: 'MPLUSCodeLatin',
                  fontSize: 18.sp,
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '-Oscar Wilde',
                  style: TextStyle(
                    fontFamily: 'MPLUSCodeLatin',
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download_for_offline),
                  label: const Text(AppStrings.downloadCV),
                ),
              )
            ],
          ),
        ),
      ),
      body: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.aboutMeTitle,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 0.2,
                        child: Image(
                          image: const AssetImage(AppImages.pencil_image),
                          height: 350.h,
                          width: 180.w,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.h),
                      width: MediaQuery.of(context)
                          .size
                          .width, // Adjust the width according to your design
                      child: const Text(
                        AppStrings.aboutMe,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: const Text(
                  AppStrings.certifications,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 330.h,
                width: double.infinity,
                child: const SkillsGrid(),
              ),
              GlassContainer(
                color: Colors.black87,
                opacity: 0.5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: SizedBox(
                  height: 420.h,
                  child: const LanguageSkills(),
                ),
              ),
              const Certifications()
            ],
          ),
        ),
      ],
    );
  }
}
