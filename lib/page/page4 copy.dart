import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  List<XFile> files = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: files.length + 1,
        itemBuilder: (context, index) {
          if (index == files.length) {
            return ElevatedButton(
              onPressed: () async {
                final ImagePicker picker = ImagePicker();
                final file =
                    await picker.pickImage(source: ImageSource.gallery);
                if (file != null) {
                  files.add(file);
                  setState(() {});
                }
              },
              child: const Text('이미지 추가'),
            );
          }
          return Column(
            children: [
              InkWell(
                onTap: () async {
                  final ImagePicker picker = ImagePicker();
                  final file =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (file != null) {
                    files[index] = file;
                    setState(() {});
                  }
                },
                onDoubleTap: () {
                  files.removeAt(index);
                  setState(() {});
                },
                child: files.isEmpty
                    ? Container(
                        width: 100,
                        height: 100,
                        color: Colors.black38,
                      )
                    // : Image.file(File(files[index].path)),
                    : Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMuRviGmuOIjiaBd9elsOJ9lthIA9hKV6JGQ&s"),
              ),
              const Gap(40),
            ],
          );
        },
      ),
    );
  }
}
