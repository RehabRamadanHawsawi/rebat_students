

// ignore_for_file: file_names

import 'package:flutter/material.dart';

/*import 'SignUpOne.dart';*/

class StudentSignup extends StatelessWidget {
  const StudentSignup ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: 179,
                height: 256,
                child: Image.asset('images/rebat_logo.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 10, 10),
              padding: const EdgeInsets.fromLTRB(0, 5, 15, 5),
              alignment: Alignment.centerRight,
              child: const Text(
                "تسجيل ",
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,
                ),
              ),
            ),
  ] )
   );
  }
}