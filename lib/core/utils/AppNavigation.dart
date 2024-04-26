import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/dashboard_screen_view.dart';
import 'package:my_portfolio/feature/presentation/views/education_screen/education_screen_view.dart';
import 'package:my_portfolio/feature/presentation/views/experience_screen/experience_screen_view.dart';
import 'package:page_transition/page_transition.dart';

import 'AppStrings.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    const String dashboardScreenRoute = AppStrings.dashboardScreenRoute;
    const String educationScreenRoute = AppStrings.educationScreenRoute;
    const String experienceScreenRoute = AppStrings.experienceScreenRoute;

    switch (settings.name) {
      case dashboardScreenRoute:
        return PageTransition(
          child: const DashboardScreenView(),
          type: PageTransitionType.fade,
        );
      case educationScreenRoute:
        return PageTransition(
          child: const EducationScreenView(),
          type: PageTransitionType.fade,
        );
      case experienceScreenRoute:
        return PageTransition(
          child: const ExperienceScreenView(),
          type: PageTransitionType.fade,
        );
      default:
        // If there is no such named route, return null.
        return null;
    }
  }
}
