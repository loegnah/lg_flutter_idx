import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  List<XFile?> files = [null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: files[index] == null
                ? () async {
                    final ImagePicker picker = ImagePicker();
                    final file =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (file != null) {
                      files.add(file);
                      setState(() {});
                    }
                  }
                : () async {
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
            child: Container(
              height: 200,
              color: Colors.black38,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: files[index] == null
                  ? null
                  : Image.file(
                      File(files[index]!.path),
                      fit: BoxFit.cover,
                    ),
              // : Image.network(
              //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMuRviGmuOIjiaBd9elsOJ9lthIA9hKV6JGQ&s",
              //     fit: BoxFit.cover,
              //   ),
            ),
          );
        },
      ),
    );
  }
}
