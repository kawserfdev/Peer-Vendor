import 'dart:async';
import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import '../../Const/AppString.dart';
import '../BottomNavController/BottomNavBer.dart';

class Welldone_Screen extends StatefulWidget {
  const Welldone_Screen({super.key});

  @override
  State<Welldone_Screen> createState() => _Welldone_ScreenState();
}

class _Welldone_ScreenState extends State<Welldone_Screen> {

    @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNavController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body:  Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(AppString.images[11]),
          SizedBox(height: 20,),
          Text(AppString.well_Done,style: FontStyle.b_40styleblack,)
        ]),
      ),
    );
  }
}