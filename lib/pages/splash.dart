import 'package:flutter/material.dart';
import 'package:medical_app/helpers/color.dart';
import 'package:medical_app/pages/home.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashPage> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueLightColor,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Image.asset(
              'assets/icon/doctor.png',
              height: 76,
              width: 59,
            ),
            padding: EdgeInsets.only(top: 20),
          ),
        ])));
  }
}
