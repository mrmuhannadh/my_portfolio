import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationItemTile extends StatefulWidget {
  const EducationItemTile({super.key});

  @override
  State<EducationItemTile> createState() => _EducationItemTileState();
}

class _EducationItemTileState extends State<EducationItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(3, 3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(),
          Container(
            width: 350.w,
            padding: EdgeInsets.only(top: 20.h, left: 20.w),
            child: Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bachelor of Information and Communication Technology',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'CGPA - 3.83 (First Class)',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.sp),
                  bottomRight: Radius.circular(20.sp),
                ),
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Text(
                  'Faculty of Technology - University of Ruhuna',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: const Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.grade),
            ),
          ),
        ],
      ),
    );
  }
}
