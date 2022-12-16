import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import 'package:peer_vendors_frontend/UI/Login/Login.dart';
import 'package:peer_vendors_frontend/UI/Onbording/Onbording.dart';
import '../../Const/AppColor.dart';
import '../../Const/AppString.dart';

class LangugeScreen1 extends StatefulWidget {
  const LangugeScreen1({super.key});

  @override
  State<LangugeScreen1> createState() => _LangugeScreen1State();
}

class _LangugeScreen1State extends State<LangugeScreen1> {
  int _rValue = 0;

  get isPressed => null;

  void method(int value) {
    setState(() {
      _rValue = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  margin: EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: AppColor.red,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 18, right: 18),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(AppString.choose_languageText,
                                style: FontStyle.b_24stylewhite),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _rValue,
                                onChanged: (value) {
                                  method(value!);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Onbording(),
                                      ));
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                AppString.language[0],
                                style: FontStyle.b_stylewhite,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _rValue,
                                onChanged: (value) {
                                  method(value!);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                AppString.language[1],
                                style: FontStyle.b_stylewhite,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: _rValue,
                                onChanged: (value) {
                                  method(value!);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                AppString.language[2],
                                style: FontStyle.b_stylewhite,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
               CircleAvatar(
              backgroundColor: AppColor.white,
              radius: 50,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(AppString.images[0]),
              ),
            ),
            ]),
      ),
    );
  }
}
