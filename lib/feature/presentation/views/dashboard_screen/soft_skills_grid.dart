import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/skil_grid_tile.dart';

class SkillsGrid extends StatelessWidget {
  const SkillsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 50.w / 30.h,
        children: const <Widget>[
          SkillGridTile(skillText: 'Leadership', skilIcon: Icons.emoji_people),
          SkillGridTile(
              skillText: 'Communication', skilIcon: Icons.comment_sharp),
          SkillGridTile(
              skillText: 'Presentation', skilIcon: Icons.co_present_rounded),
          SkillGridTile(
              skillText: 'Time Management', skilIcon: Icons.timelapse),
          SkillGridTile(skillText: 'Team Work', skilIcon: Icons.group_add),
          SkillGridTile(
              skillText: 'Problem Solving',
              skilIcon: Icons.account_tree_outlined),
        ],
      ),
    );
  }
}
