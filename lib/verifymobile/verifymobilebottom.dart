import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
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

  PanelController _pc = new PanelController();

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
              _showModalBottomSheet();
            },
            child: const Text(
              "Next",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
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

  _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.0),
        ),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          // width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                Constants.verifymobilenumber,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(Constants.verifyMobileSubText),
              ElevatedButton(
                child: const Text(Constants.verifyOTPButton),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text(Constants.resendbutton),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
