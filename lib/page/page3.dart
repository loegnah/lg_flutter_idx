import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              '어서오세요!',
            ),
            InkWell(
              onTap: () async {
                final ImagePicker picker = ImagePicker();
                file = await picker.pickImage(source: ImageSource.gallery);
                setState(() {});
              },
              child: file == null
                  ? Container(
                      width: 100,
                      height: 100,
                      color: Colors.black38,
                    )
                  : Image.file(File(file!.path)),
            ),
            const Gap(40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('다음으로'),
            ),
          ],
        ),
      ),
    );
  }
}
