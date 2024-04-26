import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:my_portfolio/core/utils/AppImages.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              Positioned(
                top: 20,
                left: 20,
                child: GlassContainer(
                  height: 100.h,
                  width: 700.w,
                  blur: 4,
                  child: Text(
                    AppStrings.landingPageText,
                    textAlign: TextAlign.left,
                    style: AppStyles.landingScreenViewTextStyle(),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppStrings.dashboardScreenRoute);
                  },
                  child: Text(
                    AppStrings.landingPageButton,
                    style: AppStyles.landingButtonTextStyle(),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
