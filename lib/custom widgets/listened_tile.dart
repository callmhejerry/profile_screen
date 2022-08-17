import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListenedTile extends StatelessWidget {
  final String image, title, subTitle;
  const ListenedTile({
    Key? key,
    required this.image,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Image.asset(
                image,
                height: 80.r,
                width: 80.r,
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 208.w,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: -0.41.w,
                        height: 1.29,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 208.w,
                    child: Text(
                      subTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: -0.41.w,
                        color: const Color(0XFF3C3C43).withOpacity(0.60),
                        height: 1.29,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: const Color(0xFF3C3C43).withOpacity(0.3),
              ),
              SizedBox(
                width: 16.w,
              )
            ],
          ),
          SizedBox(height: 9.h),
          Divider(
            color: const Color(0XFF3C3C43).withOpacity(0.29),
            thickness: 1.h,
            indent: 108.w,
            height: 0,
          )
        ],
      ),
    );
  }
}
