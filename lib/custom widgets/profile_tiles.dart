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
      padding: EdgeInsets.only(
        left: 6.w,
      ),
      height: 46.h,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 17,
                          height: 1.29,
                          letterSpacing: -0.41.w,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFF3C3C43).withOpacity(.30),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: const Color(0xFF3C3C43).withOpacity(0.29),
                  height: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
