import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppButton/ElevetedButton.dart';
import 'package:peer_vendors_frontend/Const/AppColor.dart';
import 'package:peer_vendors_frontend/Const/AppString.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import 'package:peer_vendors_frontend/UI/BottomNavController/Home/Help%20&%20Support.dart';


class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController _searchController = TextEditingController();

  List<String> categories = [
    'Cars, Bikes, Bicycles',
    'Electronics & Appliances',
  ];
   
    addNewCourse() {
    return showModalBottomSheet(
      isScrollControlled: true ,
      backgroundColor:Colors.transparent,
        context: context, builder: (context) => Help_Support());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.locetion),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_sharp),
              color: AppColor.black,
            )
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
              color: AppColor.red,
            ),
          ),
        ),
        backgroundColor: AppColor.white,
        floatingActionButton: Stack(children: [
          Positioned(
            right: 30,
            bottom: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>addNewCourse()));
              },
              child: Icon(
                Icons.headphones,
                color: AppColor.red,
              ),
              backgroundColor: AppColor.white,
              elevation: 5,
            ),
          ),
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 25,
                right: 25,
              ),
              child: Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        hintText: 'seach product',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 18, bottom: 20),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: AppColor.gray,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 8),
                              child: Center(
                                  child: Text(categories[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.black))),
                            )),
                      );
                    }),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 25,right: 25,bottom: 20),
                child: Column(
                  children: [
                    Image.asset(AppString.images[7]),
                    SizedBox(height: 5,),
                    Text(AppString.available_product_In_current_locationText,style: FontStyle.b_18styleblack,),
                    SizedBox(height: 8,),
                    fullWidthButton(AppString.search_in_nearby,(){}),
                    SizedBox(height: 8,),
                    fullWidthButton(AppString.put_Up_something_for_Sale, (){}),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
