// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      color: Colors.white,
      height: 84.w,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset("assets/profile.png"),
          SizedBox(
            width: 12.w,
          ),
          Column(
            children: [
              Text(
                "Andrea Parker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  letterSpacing: 0.36.w,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "1214 Followers",
                style: TextStyle(
                  color: const Color(0XFF3C3C43).withOpacity(0.60),
                  fontSize: 17,
                  height: 1.29,
                  letterSpacing: -0.41.w,
                ),
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0XFF3C3C43),
            ),
          ),
        ],
      ),
    );
  }
}
