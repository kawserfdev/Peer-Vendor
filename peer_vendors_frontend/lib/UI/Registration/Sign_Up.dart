import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppButton/ElevetedButton.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/Const/AppString.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import '../../Const/Widget/textFild.dart';
import '../Login/Login.dart';
import 'Sign_Up_OTP.dart';

class Sign_Up extends StatefulWidget {
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var selected = 'Bangladesh';
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_left_sharp,
                    size: 40,
                    color: AppColor.gray,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                AppString.create_account,
                style: FontStyle.b_36styleblack,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  height: 38,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColor.gray),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColor.blue),
                            height: 38,
                            child: Center(
                                child: Text(
                              AppString.PhoneText,
                              style: FontStyle.b_18stylewhite,
                            )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(AppString.emailText,
                                style: FontStyle.b_18stylewhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(AppString.full_Name),
              customTextField(_name),
              SizedBox(
                height: 20,
              ),
              Text(AppString.PhoneText),
              customTextField(_phone),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(selected),
                  DropdownButton(
                      iconSize: 30,
                      items: [
                        DropdownMenuItem(
                            value: 'Bangladesh', child: Text('Bangladesh')),
                        DropdownMenuItem(value: 'USA', child: Text('USA')),
                        DropdownMenuItem(value: 'India', child: Text('India')),
                        DropdownMenuItem(
                            value: 'Pakistan', child: Text('Pakistan')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selected = value!;
                        });
                      }),
                ],
              ),
              Divider(),
              SizedBox(
                height: 80,
              ),
              fullWidthButton(AppString.Continue, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sign_UP_OTP()));
              }),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(AppString.already_Have_an_Account),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Screen()));
                      },
                      child: Text(AppString.LoginText))
                ],
              )
            ]),
      ),
    );
  }
}
