import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import 'package:peer_vendors_frontend/UI/Login/Login.dart';
import 'package:peer_vendors_frontend/UI/Registration/Sign_Up.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  PageController _pageController = PageController();
  double currentPage = 0;
  List _image = [
    "assets/images/splash_img-1.png",
    "assets/images/splash_img-2.png",
    "assets/images/splash_img-3.png",
    "assets/images/splash_img-4.png",
  ];

  List _title = [
    'Welcome To Peer Vendor',
    'Find Your Favourite Products',
    'Buy & Sell Around You',
    'Safe & Trusted'
  ];

  List _description = [
    'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Mauris imperdiet aliquam\n ipsum, sit amet tempus nisl\n pellentesque in. Proin ultrices et ligula at\n viverra. Etiam feugiat porta\n pellentesque.',
    'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Mauris imperdiet aliquam\n ipsum, sit amet tempus nisl\n pellentesque in. Proin ultrices et ligula at\n viverra. Etiam feugiat porta\n pellentesque.',
    'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Mauris imperdiet aliquam\n ipsum, sit amet tempus nisl\n pellentesque in. Proin ultrices et ligula at\n viverra. Etiam feugiat porta\n pellentesque.',
    'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Mauris imperdiet aliquam\n ipsum, sit amet tempus nisl\n pellentesque in. Proin ultrices et ligula at\n viverra. Etiam feugiat porta\n pellentesque.',
  ];

  int _currentIndex = 0;

  final _totalDots = 4;

  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  @override
  Widget build(BuildContext context) {
    String getPrettyCurrPosition() {
      return (_currentIndex + 1.0).toStringAsPrecision(3);
    }

    void _updatePosition(double position) {
      setState(() => _currentPosition = _validPosition(position));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        _image[_currentIndex],
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: _image.length,
                      position: _currentPosition,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(_title[_currentIndex],
                          style: FontStyle.b_24styleblack),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      _description[_currentIndex],
                      style: FontStyle.b_styleblack,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sign_Up()),
                          );
                        }, child: Text("Skip",style:TextStyle(
                          fontSize: 18,color: Color(0xFFFF7465),
                        )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                                setState(() {});
                                if (_currentIndex == 3) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sign_Up()),
                                  );
                                } else {
                                  _currentIndex++;
                                  _currentPosition++;
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.gray,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35)
                                  )
                                ),
                                height: 60,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: _currentIndex == 3
                                  ? Text('Sign UP',style: FontStyle.b_18styleblack,)
                                  : Text('Next',style: FontStyle.b_18styleblack),
                                ),
                              ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
