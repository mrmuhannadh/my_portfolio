import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/feature/presentation/views/dashboard_screen/certficationTile.dart';

import '../../../../core/utils/AppStrings.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const Text(
              AppStrings.certifications,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
          const CertificationTile(
            certificateName: 'Flutter & Dart- The Complete Guide',
            givenBy: '-By Udemy',
            color: Color.fromARGB(125, 0, 0, 255),
          ),
          const CertificationTile(
            certificateName: 'Personality and Soft Skills Development Program',
            givenBy: '-By CGU-UOR',
            color: Color.fromARGB(255, 128, 185, 255),
          ),
          const CertificationTile(
            certificateName: 'Cloud Skills Challenge',
            givenBy: '-By CSSC-UOR',
            color: Color.fromARGB(125, 19, 105, 147),
          ),
          const CertificationTile(
            certificateName: 'AdaGrad \'21, Introduction to Machine Learning',
            givenBy: '-By IEEE-SLTC',
            color: Color.fromARGB(125, 135, 120, 14),
          ),
        ],
      ),
    );
  }
}
