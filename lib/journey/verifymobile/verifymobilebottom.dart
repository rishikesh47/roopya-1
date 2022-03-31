import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:roopya_banking_app/verifymobile/verify%20otp.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';

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
      decoration: const BoxDecoration(
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
              _showModalBottomSheet();
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => verificationotp()),
              // );

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

  _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.0),
        ),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          // width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(child: Container()),
               Text(
                Constants.verifymobilenumber,
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
               Text(
                Constants.verifyviaOTP,
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 10),
               Text(
                Constants.verifyMobileSubText,
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(child: Container()),
              Container(
                // width: SizeConfig.screenWidth! * 0.79,
                  color: Colors.transparent,
                  // margin: const EdgeInsets.all(20.0),
                  padding: EdgeInsets.only(
                      bottom: 0,
                      top: 0,
                      left: SizeConfig.screenWidth! * 0.25,
                      right: SizeConfig.screenWidth! * 0.25),
                  child: PinPut(
                    obscureText: ('\u{20B9}'),
                    fieldsCount: 4,
                    useNativeKeyboard:true,
                    // onSubmit: (String pin) => _showSnackBar(pin, context),
                    // onSubmit: (String pin) =>{Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>  PinSuccess()),
                    // )},
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: _pinPutDecoration,
                    // borderRadius: BorderRadius.circular(20.0),
                    // selectedFieldDecoration: _pinPutDecoration,
                    disabledDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration,
                    // borderRadius: BorderRadius.circular(5.0)
                  )),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text(Constants.verifyOTPButton,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      shadowColor: GlobalColors.mildblack,
                      fixedSize: const Size(100, 47),
                      // minimumSize: const Size(35, 45),
                      onPrimary: Colors.white,
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    child: const Text(Constants.resendbutton,
                        style: TextStyle(
                            color: GlobalColors.darkBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 2.0,
                        color: GlobalColors.mediumBlue,
                      ),
                      fixedSize: const Size(100, 47),
                      // minimumSize: const Size(35, 45),
                      onPrimary: Colors.black,
                      primary: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Expanded(child: Container()),
              ElevatedButton(
                onPressed: () {
                  // Get.to(FirstPolicy()),
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verificationotp()),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(SizeConfig.screenWidth! * 1,
                      SizeConfig.screenHeight! * 0.08),
                  primary: Colors.lightBlue,
                  elevation: 0,
                  shadowColor: Colors.black87,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
