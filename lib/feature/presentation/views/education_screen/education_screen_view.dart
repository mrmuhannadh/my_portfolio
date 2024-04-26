import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/feature/presentation/common/common_app_drawer.dart';

import '../../common/common_app_bar.dart';

class EducationScreenView extends StatefulWidget {
  const EducationScreenView({super.key});

  @override
  State<EducationScreenView> createState() => _EducationScreenViewState();
}

class _EducationScreenViewState extends State<EducationScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: AppStrings.educationTitle,
      ),
      drawer: AppDrawer(
        selectedIndex: 1,
      ),
    );
  }
}
