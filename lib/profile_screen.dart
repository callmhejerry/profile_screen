// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:profile_screen/custom%20widgets/profile_tiles.dart';
import 'package:profile_screen/custom%20widgets/user.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: ListView(
        children: [
          const User(),
          const ProfileTiles(imageUrl: "assets/symbol1.png", name: "Tracks"),
          const ProfileTiles(imageUrl: "assets/Symbol2.png", name: "Albums"),
          const ProfileTiles(imageUrl: "assets/Symbol3.png", name: "Artists"),
          const ProfileTiles(imageUrl: "assets/Symbol4.png", name: "Playlists"),
          const ProfileTiles(imageUrl: "assets/Symbol5.png", name: "Download"),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
