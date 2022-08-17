import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Track extends StatelessWidget {
  const Track({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          color: Colors.white.withOpacity(0.78),
          height: 48.h,
          child: Column(
            children: [
              LinearProgressIndicator(
                minHeight: 2,
                color: const Color(0xFF1C1C1E),
                value: 0.4,
                backgroundColor: const Color(0xFF787880).withOpacity(0.20),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset(
                    "assets/currentTrack.png",
                    height: 32.r,
                    width: 32.r,
                  ),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Mars",
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: -0.08.w,
                          height: 1.38,
                        ),
                      ),
                      Text(
                        "Dio Rex",
                        style: TextStyle(
                          fontSize: 11,
                          letterSpacing: 0.07.w,
                          height: 1.318,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/Play.png",
                    height: 44.r,
                    width: 44.r,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
