import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterdetails/user_details_screen.dart';
import 'package:roopya_banking_app/verifymobile/verify%20otp.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../utils/size_config.dart';










class sliderbottom extends StatefulWidget {
  // final  PageController _pageController ;
  // onboarding1(this._pageController);


  @override
  _sliderbottomState createState() => _sliderbottomState();
}

class _sliderbottomState extends State<sliderbottom> {


  // @override
  // void initState() {
  //   _pageController = PageController(initialPage: 0);
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }



  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Container(
      height: SizeConfig.screenHeight!*0.08,
      decoration: BoxDecoration(
          color: Colors.blue
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {

              // _pageController.nextPage(
              //   duration: Duration(milliseconds: 200),
              //   curve: Curves.linear,
              // );
              // Get.to(FirstPolicy()),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserDetails()),
              );

            },
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w200 ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.08),
              primary: Colors.lightBlue,
              elevation: 0,
              shadowColor: Colors.black87,
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
        ],
      ),
    );
  }
}
