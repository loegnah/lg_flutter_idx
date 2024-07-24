import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myapp/page/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            '회원가입',
          ),
          TextField(
            onChanged: (value) {
              isEmailValid = EmailValidator.validate(value);
              setState(() {});
            },
          ),
          const Gap(40),
          ElevatedButton(
            onPressed: isEmailValid
                ? () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Page3()));
                  }
                : null,
            child: const Text('다음으로'),
          ),
        ],
      ),
    );
  }
}
