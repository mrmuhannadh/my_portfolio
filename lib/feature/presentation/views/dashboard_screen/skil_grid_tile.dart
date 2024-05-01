import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillGridTile extends StatefulWidget {
  final String skillText;
  final IconData skilIcon;
  const SkillGridTile(
      {super.key, required this.skillText, required this.skilIcon});

  @override
  State<SkillGridTile> createState() => _SkillGridTileState();
}

class _SkillGridTileState extends State<SkillGridTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFF000450), Color(0xFF004E92)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.skilIcon,
            color: Colors.white,
            size: 30.sp,
          ),
          Text(
            widget.skillText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
