import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:gap/gap.dart';
import 'package:animate_do/animate_do.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            '포토네컷',
          ),
          Gap(10),
          FadeIn(
            duration: Duration(seconds: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Ionicons.camera_outline),
                Icon(Ionicons.camera_reverse_outline),
                Icon(Ionicons.image_outline),
                Icon(Ionicons.videocam_outline),
              ],
            ),
          ),
          Gap(10),
          ElevatedButton(
            onPressed: () {},
            child: Text('시작하기'),
          ),
        ],
      ),
    );
  }
}
