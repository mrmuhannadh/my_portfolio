import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:my_portfolio/core/utils/AppImages.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';
import 'package:my_portfolio/feature/presentation/views/landing_screen/background_anim.dart';
import 'package:my_portfolio/feature/presentation/views/landing_screen/slide_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        body: Stack(
          children: [
            // Center(
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: SizedBox(
            //       height: 600.h,
            //       child: const ModelViewer(
            //         src: AppImages.avatar,
            //         alt: 'A 3D model of a avatar',
            //         ar: true,
            //         autoPlay: true,
            //         autoRotate: false,
            //         disableZoom: false,
            //         cameraControls: true,
            //       ),
            //     ),
            //   ),
            // ),
            Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                      Color.fromARGB(255, 0, 0, 25),
                      Color.fromARGB(255, 0, 0, 35),
                    ])),
                padding: EdgeInsets.only(top: 50.h),
                // child: BackgroundShapes(),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'PORTFOLIO',
                  style: TextStyle(
                    fontFamily: 'MinnePetat',
                    fontSize: 80.sp,
                    color: Colors.white,
                    letterSpacing: 20.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              child: GlassContainer(
                  height: double.infinity,
                  width: double.infinity,
                  blur: 13,
                  child: Container(
                    padding: EdgeInsets.only(top: 100.h),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            AppStrings.landingPageText,
                            textAlign: TextAlign.left,
                            style: AppStyles.landingScreenViewTextStyle(),
                          ),
                        ),
                        Image.asset(
                          AppImages.myImage,
                          height: 450.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          child: Text(
                            AppStrings.subtitle,
                            textAlign: TextAlign.left,
                            style: AppStyles.subTitleTextStyle(),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),

            Positioned(
              bottom: 20.h, // Align to the bottom of the screen
              left: 0, // Align to the left edge of the screen
              right: 0,
              child: const SlidToNavigate(),
            ),
          ],
        ));
  }
}
