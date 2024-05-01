import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  const CommonBottomNavigationBar({super.key, required this.selectedIndex});

  @override
  State<CommonBottomNavigationBar> createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOutQuad,
      index: widget.selectedIndex,
      backgroundColor: Colors.blue.shade900,
      onTap: (int i) {
        switch (i) {
          case 0:
            Navigator.popAndPushNamed(context, AppStrings.dashboardScreenRoute);
            break;
          case 1:
            Navigator.popAndPushNamed(context, AppStrings.educationScreenRoute);
            break;
          case 2:
            Navigator.popAndPushNamed(
                context, AppStrings.experienceScreenRoute);
            break;
          case 3:
            // Navigator.pushNamed(context, AppStrings.contactScreenRoute);
            break;
        }
      },
      items: const [
        CurvedNavigationBarItem(
            child: Icon(Icons.people), label: AppStrings.profile),
        CurvedNavigationBarItem(
            child: Icon(Icons.my_library_books), label: AppStrings.education),
        CurvedNavigationBarItem(
            child: Icon(Icons.laptop), label: AppStrings.experience),
        CurvedNavigationBarItem(
            child: Icon(Icons.phone), label: AppStrings.contact),
      ],
      // items: [
      //   CurvedNavigationBarItem(
      //     label: 'Home',
      //     child: IconButton(
      //       onPressed: () {
      //         if (widget.selectedIndex != 0) {
      //           Navigator.popAndPushNamed(
      //               context, AppStrings.dashboardScreenRoute);
      //         }
      //       },
      //       icon: widget.selectedIndex == 0
      //           ? const Icon(Icons.person)
      //           : const Icon(Icons.person_2_outlined),
      //     ),
      //   ),
      //   CurvedNavigationBarItem(
      //     label: 'Home',
      //     child: IconButton(
      //       padding: EdgeInsets.zero,
      //       onPressed: () {
      //         if (widget.selectedIndex != 1) {
      //           Navigator.popAndPushNamed(
      //               context, AppStrings.educationScreenRoute);
      //         }
      //       },
      //       icon: widget.selectedIndex == 1
      //           ? const Icon(Icons.my_library_books)
      //           : const Icon(Icons.library_books_outlined),
      //     ),
      //   ),
      //   CurvedNavigationBarItem(
      //     label: 'Home',
      //     child: IconButton(
      //       onPressed: () {
      //         if (widget.selectedIndex != 2) {
      //           Navigator.popAndPushNamed(
      //               context, AppStrings.experienceScreenRoute);
      //         }
      //       },
      //       icon: widget.selectedIndex == 2
      //           ? const Icon(Icons.laptop)
      //           : const Icon(Icons.laptop_rounded),
      //     ),
      //   ),
      //   CurvedNavigationBarItem(
      //     label: 'Home',
      //     child: IconButton(
      //       onPressed: () {
      //         if (widget.selectedIndex != 3) {
      //           Navigator.popAndPushNamed(
      //               context, AppStrings.dashboardScreenRoute);
      //         }
      //       },
      //       icon: widget.selectedIndex == 3
      //           ? const Icon(Icons.phone)
      //           : const Icon(Icons.phone_in_talk_rounded),
      //     ),
      //   ),
      // ],
    );
  }
}
