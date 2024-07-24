import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            '포토네컷',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.camera_outline),
              Icon(Ionicons.camera_reverse),
              Icon(Ionicons.add),
              Icon(Ionicons.add),
            ],
          ),
        ],
      ),
    );
  }
}
