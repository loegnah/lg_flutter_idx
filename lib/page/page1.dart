import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:gap/gap.dart';
import 'package:animate_do/animate_do.dart';
import 'package:myapp/page/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Ionicons.camera_outline,
      Ionicons.camera_reverse_outline,
      Ionicons.image_outline,
      Ionicons.videocam_outline,
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            '포토네컷',
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconList.asMap().entries.map((e) {
              return FadeInRight(
                delay: Duration(milliseconds: e.key * 500),
                child: Icon(e.value),
              );
            }).toList(),
          ),
          const Gap(10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Page2()));
            },
            child: const Text('시작하기'),
          ),
        ],
      ),
    );
  }
}
