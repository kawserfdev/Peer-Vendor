import 'dart:async';
import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/UI/Language/Language.dart';
import 'package:peer_vendors_frontend/UI/Onbording/Onbording.dart';
import '../Const/AppColor.dart';
import '../Const/AppString.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LangugeScreen1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            AppString.images[0],
            scale: 1,
          )
        ]),
      ),
    );
  }
}