import 'package:flutter/material.dart';
import '../../Const/AppButton/ElevetedButton.dart';
import '../../Const/AppColor.dart';
import '../../Const/AppString.dart';
import '../../Const/Widget/textFild.dart';
import '../Registration/Welldone.dart';

class LogIn_OTP extends StatelessWidget {
   TextEditingController _phoneOTP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColor.white,
              radius: 50,
              child: Image.asset(AppString.images[0]),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(AppString.enter_OTP_code)),
            customTextField(_phoneOTP),
            SizedBox(
              height: 20,
            ),
            fullWidthButton(AppString.Continue, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welldone_Screen()));
              }),
          ],
        ),
      ),
    );
  }
}