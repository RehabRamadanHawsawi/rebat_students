import 'package:flutter/material.dart';

import 'login.dart';

// ignore: camel_case_types
class welcome_rebat extends StatelessWidget {
  const welcome_rebat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( //MaterialApp تقوم بتطبيق كل الاوامرالمطلوبة من ال Scaffold
  
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
       // Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login()),
                );
              },
              child: const Image(
                image: AssetImage('images/LOGO-.png'),
                width: 870,
                height: 800,
              ),
                ),
          ],
        ),
      ),
        ),
      );
  }
}