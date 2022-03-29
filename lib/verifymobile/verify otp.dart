import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roopya_banking_app/reusable_widgets/header_widget.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:roopya_banking_app/verifymobile/sliderbottom.dart';
import 'package:roopya_banking_app/verifymobile/verification.dart';
import 'package:roopya_banking_app/verifymobile/verifymobilebottom.dart';
import 'package:roopya_banking_app/verifymobile/verifyotpbottom.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../strings_and_colors/colors.dart';
import 'package:pinput/pin_put/pin_put.dart';
import '../strings_and_colors/constants.dart';

class verificationotp extends StatefulWidget {
  const verificationotp({Key? key}) : super(key: key);

  @override
  State<verificationotp> createState() => _verificationotpState();
}

class _verificationotpState extends State<verificationotp> {
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

  BoxDecoration get _pinPutDecoration1 {
    return BoxDecoration(
      border: Border.all(width: 2, color: Color(0xffC1BABA)),
      borderRadius: BorderRadius.circular(3.0),
      // boxShadow:  [   BoxShadow(
      //   color: Colors.transparent,
      //   offset: Offset(0, 0),
      //   blurRadius: 0,
      // )
      // ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Material(
          elevation: 0,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: EdgeInsets.only(left: 0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.01,
                    ),
                    const HeaderSection(),
                    // Padding(
                    //   padding:  EdgeInsets.only(left:SizeConfig.screenHeight!*0.02),
                    //   child: Image.asset('assets/roopyalogo.png'),
                    // ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.05,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenHeight! * 0.02),
                        child: RichText(
                          text: TextSpan(
                            text: Constants.verifypin,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.0,
                                color: GlobalColors.apptheme,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: "${box.read('number')}",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Roboto',
                                    color: Colors.grey,
                                    letterSpacing: 0.5,
                                    wordSpacing: -5),
                              ),
                              TextSpan(
                                text: ' | ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: 'Edit',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    color: GlobalColors.apptheme,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pop(context);
                                    }),
                            ],
                          ),
                        )
                        // Text(
                        //   Constants.verifypin + "${box.read('number')}".replaceRange(3, 9, 'xxxxxxxx') ,
                        //   style: TextStyle(
                        //       fontFamily: 'Roboto',
                        //       fontSize: 21.0,
                        //       color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                        // ),
                        ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.05,
                    ),
                    Container(
                        width: SizeConfig.screenWidth! * 0.79,
                        color: Colors.transparent,
                        // margin: const EdgeInsets.all(20.0),
                        padding: EdgeInsets.only(
                            bottom: 0,
                            top: 0,
                            left: SizeConfig.screenHeight! * 0.02,
                            right: SizeConfig.screenWidth! * 0.27),
                        child: PinPut(
                          obscureText: ('\u{20B9}'),
                          fieldsCount: 4,
                          // onSubmit: (String pin) => _showSnackBar(pin, context),
                          // onSubmit: (String pin) =>{Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  PinSuccess()),
                          // )},
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: _pinPutDecoration,
                          // borderRadius: BorderRadius.circular(20.0),
                          selectedFieldDecoration: _pinPutDecoration1,
                          disabledDecoration: _pinPutDecoration,
                          followingFieldDecoration: _pinPutDecoration,
                          // borderRadius: BorderRadius.circular(5.0)
                        )),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.02,
                    ),

                    Material(
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenHeight! * 0.02),
                        child: const Text(
                          Constants.otpnotget,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenHeight! * 0.02),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk,
                            color: GlobalColors.apptheme,
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth! * 0.02,
                          ),
                          Text(
                            Constants.otpgetviacall,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: GlobalColors.apptheme,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    verifyotpbottom(_pc)
                  ],
                ),
              ),
            ),
          ),
        ),
        SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
          backdropEnabled: true,
          backdropColor: Colors.transparent,
          minHeight: 0,
          maxHeight: SizeConfig.screenHeight! * 0.68,
          controller: _pc,
          panel: Column(
            children: [
              Center(
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    color: Colors.white,
                    // gradient: LinearGradient(
                    //     begin: Alignment.topRight,
                    //     end: Alignment.bottomLeft,
                    //     stops: [
                    //       0.1,
                    //       0.4,
                    //       0.6,
                    //       0.9,
                    //     ],
                    //     colors: [
                    //       Color(0xff1C7BC0),
                    //       Color(0xff51C0FF)                 ,
                    //       Color(0xff51C0FF),
                    //       Color(0xff51C0FF),
                    //     ]
                    //   // colors: [
                    //   //   Color(0xff2596be),
                    //   //   Color(0xff1791A6),
                    //   //   Color(0xff259AAC),
                    //   //   Color(0xff52B7C1),
                    //   // ],
                    // )
                  ),
                  height: SizeConfig.screenHeight! * 0.59,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.screenWidth! * 0.04),
                    child: Column(
                      children: [
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.05,
                        ),
                        Row(
                          children: [
                            // Checkbox(
                            //   checkColor: GlobalColors.appThemeColor,
                            //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
                            //   value: isChecked,
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       isChecked = value!;
                            //     });
                            //   },
                            // ),
                            CircleAvatar(
                              child: Icon(
                                Icons.camera,
                                color: Color(0xff0F9AFF),
                                size: 37,
                              ),
                              backgroundColor:
                                  Color(0xff0F9AFF).withOpacity(0.3),
                              radius: 23,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth! * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.screenWidth! * 0.01),
                                    child: Text(
                                      'Send sms permission',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: GlobalColors.apptheme,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth! * 0.8,
                                    child: Text(
                                      'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            // Checkbox(
                            //   checkColor: GlobalColors.appThemeColor,
                            //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
                            //   value: isChecked,
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       isChecked = value!;
                            //     });
                            //   },
                            // ),
                            CircleAvatar(
                              child: Icon(
                                Icons.camera,
                                color: Color(0xff0F9AFF),
                                size: 37,
                              ),
                              backgroundColor:
                                  Color(0xff0F9AFF).withOpacity(0.3),
                              radius: 23,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth! * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: SizeConfig.screenWidth! * 0.01),
                                    child: Center(
                                      child: Text(
                                        'Phone state permission',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: GlobalColors.apptheme,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth! * 0.8,
                                    child: Center(
                                      child: Text(
                                        'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xff959595),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Checkbox(
                        //       checkColor: GlobalColors.appThemeColor,
                        //       // fillColor: MaterialStateProperty.resolveWith(getColor),
                        //       value: isChecked,
                        //       onChanged: (bool? value) {
                        //         setState(() {
                        //           isChecked = value!;
                        //         });
                        //       },
                        //     ),
                        //
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children:  const[
                        //         Padding(
                        //           padding: EdgeInsets.only(bottom: 5),
                        //           child: Text(
                        //             Constants.locationPermission,
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.bold),
                        //           ),
                        //         ),
                        //
                        //         Text(
                        //           Constants.locationPermissionContent,
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ],
                        //
                        //     )],
                        // ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            // Checkbox(
                            //   checkColor: GlobalColors.appThemeColor,
                            //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
                            //   value: isChecked,
                            //   onChanged: (bool? value) {
                            //     setState(() {
                            //       isChecked = value!;
                            //     });
                            //   },
                            // ),
                            CircleAvatar(
                              child: Icon(
                                Icons.camera,
                                color: Color(0xff0F9AFF),
                                size: 37,
                              ),
                              backgroundColor:
                                  Color(0xff0F9AFF).withOpacity(0.3),
                              radius: 23,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth! * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: SizeConfig.screenWidth! * 0.01),
                                    child: Center(
                                      child: Text(
                                        'Read sms permission',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: GlobalColors.apptheme,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth! * 0.8,
                                    child: Text(
                                      'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        // Row(
                        //   children: [
                        //     Checkbox(
                        //       checkColor: GlobalColors.appThemeColor,
                        //       // fillColor: MaterialStateProperty.resolveWith(getColor),
                        //       value: isChecked,
                        //       onChanged: (bool? value) {
                        //         setState(() {
                        //           isChecked = value!;
                        //         });
                        //       },
                        //     ),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children:  const[
                        //         Padding(
                        //           padding: EdgeInsets.only(bottom: 5),
                        //           child: Text(
                        //             Constants.locationPermission,
                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.bold),
                        //           ),
                        //         ),
                        //
                        //         Text(
                        //           Constants.locationPermissionContent,
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ],
                        //
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              sliderbottom()
            ],
          ),
        ),
      ]),
    );
  }
}
