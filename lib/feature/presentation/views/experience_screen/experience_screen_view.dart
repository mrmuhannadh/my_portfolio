import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_bar.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_drawer.dart';
import 'package:my_portfolio/feature/presentation/common/common_bottom_nav_bar.dart';

class ExperienceScreenView extends StatefulWidget {
  const ExperienceScreenView({super.key});

  @override
  State<ExperienceScreenView> createState() => _ExperienceScreenViewState();
}

class _ExperienceScreenViewState extends State<ExperienceScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: AppStrings.experienceTitle,
      ),
      drawer: AppDrawer(
        selectedIndex: 2,
      ),
      bottomNavigationBar: CommonBottomNavigationBar(
        selectedIndex: 2,
      ),
    );
  }
}
