// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'listened_tile.dart';
import 'profile_tiles.dart';
import 'user.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 8.h,
      ),
      const User(),
      const ProfileTiles(imageUrl: "assets/symbol1.png", name: "Tracks"),
      const ProfileTiles(imageUrl: "assets/Symbol2.png", name: "Albums"),
      const ProfileTiles(imageUrl: "assets/Symbol3.png", name: "Artists"),
      const ProfileTiles(imageUrl: "assets/Symbol4.png", name: "Playlists"),
      const ProfileTiles(imageUrl: "assets/Symbol5.png", name: "Download"),
      SizedBox(
        height: 8.h,
      ),
      Container(
        padding: EdgeInsets.only(left: 16.w),
        height: 50.h,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 13.h, bottom: 8.h),
              child: const Text(
                "Recently Listened",
                style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 0.35,
                  fontWeight: FontWeight.w500,
                  height: 1.27,
                ),
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
      const ListenedTile(
        image: "assets/Track1.png",
        subTitle: "42 Tracks",
        title: "More You Like",
      ),
      const ListenedTile(
        image: "assets/Track2.png",
        subTitle: "Cosmic Journey",
        title: "Dio Rex",
      ),
      const ListenedTile(
        image: "assets/Track3.png",
        subTitle: "New Album - It Is What It Is ",
        title: "More You Like",
      ),
    ]);
  }
}
