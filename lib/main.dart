import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/pages/home.dart';
import 'package:medical_app/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black12,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            '/home': (context) => HomePage(),
          },
        ));
  }
}
