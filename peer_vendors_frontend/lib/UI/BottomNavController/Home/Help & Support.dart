import 'package:flutter/material.dart';
import 'package:peer_vendors_frontend/Const/AppString.dart';
import 'package:peer_vendors_frontend/Responsive/Style/testStyle.dart';
import '../../../Const/AppColor.dart';

class Help_Support extends StatelessWidget {
  const Help_Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppString.help_Text,
                style: FontStyle.b_24styleblack,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    color: AppColor.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppString.Fix_Location_ProblemText,
                    style: TextStyle(fontSize: 12, color: AppColor.red),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    color: AppColor.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppString.how_to_use_this_appText,
                    style: TextStyle(fontSize: 12, color: AppColor.red),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.contact_support,
                    color: AppColor.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppString.contact_us_for_LocationText,
                    style: TextStyle(fontSize: 12, color: AppColor.red),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: AppColor.black,
                  ),
                ),
            ],
          ),
    );
  }
}
