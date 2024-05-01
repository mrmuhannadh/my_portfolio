import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:my_portfolio/core/utils/AppStyles.dart';

class AppDrawer extends StatefulWidget {
  final int selectedIndex;
  const AppDrawer({super.key, required this.selectedIndex});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = widget.selectedIndex;
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromRGBO(0, 183, 244, 1),
              Color.fromRGBO(0, 1, 170, 175),
            ])),
        child: Column(
          children: [
            DrawerHeader(
              child: Text(
                AppStrings.appTitle,
                style: AppStyles.drawerStyles(),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                AppStrings.profileTile,
                style: AppStyles.drawerStyles(),
              ),
              onTap: () {
                if (selectedIndex != 0) {
                  Navigator.popAndPushNamed(
                      context, AppStrings.dashboardScreenRoute);
                  setState(() {
                    selectedIndex = 0;
                  });
                }
              },
              selected: selectedIndex == 0,
              selectedTileColor: Colors.black,
              selectedColor: const Color.fromRGBO(0, 183, 244, 1),
            ),
            ListTile(
              leading: const Icon(Icons.library_books_outlined),
              title: Text(
                AppStrings.education,
                style: AppStyles.drawerStyles(),
              ),
              onTap: () {
                if (selectedIndex != 1) {
                  Navigator.pushNamed(context, AppStrings.educationScreenRoute);
                  setState(() {
                    selectedIndex = 1;
                  });
                }
              },
              selected: selectedIndex == 1,
              selectedTileColor: Colors.black,
              selectedColor: const Color.fromRGBO(0, 183, 244, 1),
            ),
            ListTile(
              leading: const Icon(Icons.computer_outlined),
              title: Text(
                AppStrings.experience,
                style: AppStyles.drawerStyles(),
              ),
              onTap: () {
                if (selectedIndex != 2) {
                  Navigator.pushNamed(
                      context, AppStrings.experienceScreenRoute);
                  setState(() {
                    selectedIndex = 2;
                  });
                }
              },
              selected: selectedIndex == 2,
              selectedTileColor: Colors.black,
              selectedColor: const Color.fromRGBO(0, 183, 244, 1),
            ),
          ],
        ),
      ),
    );
  }
}
