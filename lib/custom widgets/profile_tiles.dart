// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTiles extends StatelessWidget {
  final String imageUrl, name;
  const ProfileTiles({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 6.w, right: 15.w),
      height: 44.h,
      width: double.infinity,
      child: Row(children: [
        Image.asset(imageUrl),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.29,
                    letterSpacing: -0.41.w,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0XFF3C3C43),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: const Color(0XFF3C3C43).withOpacity(0.29),
            ),
          ],
        )
      ]),
    );
  }
}
