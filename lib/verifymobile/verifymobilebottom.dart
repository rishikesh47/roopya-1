import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../journey/verifymobile/verify otp.dart';
import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';

class onboarding1 extends StatefulWidget {
  // final  PageController _pageController ;
  // onboarding1(this._pageController);
  @override
  _onboarding1State createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  // late final  PageController _pageController ;
  // _onboarding1State(this._pageController);
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
  TextEditingController mobileVerificationCtr = TextEditingController();
  bool hidePassword = true;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final box = GetStorage();
  PanelController _pc = new PanelController();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(3.0),
      border: Border.all(
        width: 1,
        // assign the color to the border color
        color: Color(0xffC1BABA),
      ),
      // boxShadow:  [   BoxShadow(
      //   color: Color(0xff2F4748).withOpacity(0.25),
      //   offset: Offset(0, 2),
      //   blurRadius: 2,
      // )
      // ]
    );
  }

  // BoxDecoration get _pinPutDecoration1 {
  //   return BoxDecoration(
  //     border: Border.all(width: 2, color: Color(0xffC1BABA)),
  //     borderRadius: BorderRadius.circular(3.0),
  //     // boxShadow:  [   BoxShadow(
  //     //   color: Colors.transparent,
  //     //   offset: Offset(0, 0),
  //     //   blurRadius: 0,
  //     // )
  //     // ]
  //   );
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
      height: SizeConfig.screenHeight! * 0.08,
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // _pageController.nextPage(
              //   duration: Duration(milliseconds: 200),
              //   curve: Curves.linear,
              // );
              // Get.to(FirstPolicy()),
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => verificationotp()),
              // );
              // _pc.open();
              // print("tapped");
              // _showModalBottomSheet();
            },
            child: const Text(
              "Next",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                  SizeConfig.screenWidth!, SizeConfig.screenHeight! * 0.08),
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
