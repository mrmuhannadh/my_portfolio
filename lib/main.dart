import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/AppNavigation.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/feature/presentation/views/landing_screen/landing_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(393, 851),
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        title: "Muhannadh - Portfolio",
        home: LandingScreen(),
      ),
    );
  }
}
