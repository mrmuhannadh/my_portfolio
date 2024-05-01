import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/utils/AppStrings.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlidToNavigate extends StatelessWidget {
  const SlidToNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final GlobalKey<SlideActionState> _key = GlobalKey();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SlideAction(
            key: _key,
            onSubmit: () {
              Navigator.popAndPushNamed(
                  context, AppStrings.dashboardScreenRoute);
            },
            innerColor: Colors.black.withOpacity(0.8),
            outerColor: Colors.white.withOpacity(0.5),
            child: Text(
              'Slide to View',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
        );
      },
    );
  }
}
