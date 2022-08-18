// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'custom widgets/bottom.dart';
import 'custom widgets/tracks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.41.w,
            height: 1.29,
          ),
        ),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          label: const Text(
            "back",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        leadingWidth: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Colors.pinkAccent),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/Home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Browse.png"), label: "Browse"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/library.png"), label: "Library"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/profileIcon.png"), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: const [
            Bottom(),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Track(),
            )
          ],
        ),
      ),
    );
  }
}
