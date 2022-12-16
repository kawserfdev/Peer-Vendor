import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';

Widget fullWidthButton(
  String title,
  onPressed,
) {
  return ElevatedButton(
    onPressed: onPressed,
     style: ElevatedButton.styleFrom(
              backgroundColor:AppColor.blue,
              fixedSize: Size( double.maxFinite, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(title,style: FontStyle.n_18stylewhite,),
     
     );
}
