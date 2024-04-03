/*
import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
      ),
    );
  }
}

*/

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rebat/driverSignup/signup_one.dart';
import 'package:rebat/signup/studentSignup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Container(
                width: 179,
                height: 156,
                child: Image.asset('images/rebat_logo_cropped.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 10, 10),
              padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
              alignment: Alignment.centerRight,
              child: Text(
                "تسجيل دخول",
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
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 139, 171, 199),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              height: 49,
              width: 324,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 139, 171, 199),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "رقم الجوال",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 2,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                ),
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9]')), // Allow only numerical input
                ],
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 39,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpOne()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(25, 69, 107, 1)),
                  foregroundColor: MaterialStatePropertyAll(Colors.green),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)))),
              child: Text(
                " تسجيل الدخول",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  // backgroundColor: Color.fromARGB(255, 139, 171, 199),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentSignup(),
                      ),
                    );
                  },
                  child: Text(
                    " سجل هنا ",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      // backgroundColor: Color.fromARGB(255, 139, 171, 199),
                      color: Color.fromRGBO(25, 69, 107, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "ليس لديك حساب؟",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // backgroundColor: Color.fromARGB(255, 139, 171, 199),
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}