import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/UI/BottomNavController/Account/Profile.dart';
import 'package:peer_vendors_frontend/UI/BottomNavController/Chat/All%20Chat.dart';
import 'package:peer_vendors_frontend/UI/BottomNavController/Home/Home.dart';
import 'package:peer_vendors_frontend/UI/BottomNavController/My%20Ads/My_Ads.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home_Screen(),
    My_Ads_Screen(),
    Chat_screen(),
    Account_screen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StylishBottomBar(
        items: [
          AnimatedBarItems(
            icon: Icon(
              Icons.home,
            ),
            selectedColor: AppColor.blue,
             title: Text('Home'),
          ),
          AnimatedBarItems(
              icon: Icon(
                Icons.shopping_bag,
              ),
              selectedColor: AppColor.blue,
               title: Text('My Ads')),
          AnimatedBarItems(
              icon: Icon(
                Icons.chat,
              ),
              selectedColor: AppColor.blue,
               title: Text('Chat')),
          AnimatedBarItems(
              icon: Icon(
                Icons.account_box_rounded,
              ),
              selectedColor: AppColor.blue,
              title: Text('Account')),
        ],
       
       barAnimation: BarAnimation.blink,
        backgroundColor: AppColor.white,
        iconSize: 28,
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        opacity: 0.3,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index!;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add_box_outlined,
          color: AppColor.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_currentIndex],
    );
  }
}
