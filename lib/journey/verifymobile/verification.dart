import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:roopya_banking_app/journey/verifymobile/verifymobileheader.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/strings_and_colors/constants.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:roopya_banking_app/verifymobile/verifymobilebottom.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../verifymobile/sliderbottom.dart';

class verification extends StatefulWidget {
  const verification({Key? key}) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  TextEditingController mobileVerificationCtr = TextEditingController();
  bool hidePassword = true;
  final box = GetStorage();
  late String Number;
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.1,
                ),
                vmHeaderSection(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.09,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.screenHeight! * 0.02),
                  child: Text(
                    Constants.phonenumber,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25.0,
                        color: GlobalColors.apptheme,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.025,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.screenHeight! * 0.02),
                  child: Text(
                    Constants.phonenumbersub,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.screenHeight! * 0.02),
                  child: Material(
                    elevation: 0,
                    child: Stack(children: [
                      Container(
                        width: SizeConfig.screenWidth! * 0.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white,
                          // boxShadow: [
                          //   BoxShadow(color: Colors.grey, spreadRadius: 3),
                          // ],
                        ),
                        child: TextFormField(
                          // showCursor: false,
                          onChanged: (value) {
                            setState(() {
                              Number = value.toString();
                              box.write('number', Number.toString());
                            });
                          },
                          style: const TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              letterSpacing: 0.5,
                              wordSpacing: -5),
                          cursorColor: Color(0xff2D3092),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            MaskedInputFormatter(' ###00#####')
                          ],
                          validator: (value) {
                            return (value == null || value.isEmpty)
                                ? 'Enter your number'
                                : null;
                          },
                          controller: mobileVerificationCtr,
                          /*  onChanged: (value) {
                                     print(value);
                                   },*/
                          obscureText: false,
                          //show/hide password
                          decoration: InputDecoration(
                            prefix: Container(
                              width: SizeConfig.screenWidth! * 0.2,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/flag.png',
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth! * 0.01,
                                  ),
                                  Text(
                                    '+91',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            // prefixText: '+91',
                            // prefixIcon: Padding(
                            //     padding:  EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                            //     child: Container(
                            //         decoration: BoxDecoration(
                            //
                            //           borderRadius: BorderRadius.only(topLeft:Radius.circular(3),bottomLeft: Radius.circular(3)),
                            //           boxShadow: [
                            //             BoxShadow(color: Colors.grey, spreadRadius: 3),
                            //           ],
                            //           color:Colors.white,
                            //         ),
                            //         child: Image.asset('assets/flag.png',))
                            // ),
                            // Color(0xFF031A6E)
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 12,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            // hintText: "Enter your number",
                            // hintStyle: const TextStyle(color: Colors.black)
                            // prefixIcon: const Icon(Icons.lock),
                            // suffixIcon: IconButton(
                            //   icon: hidePassword
                            //       ? const Icon(Icons.visibility_off)
                            //       : const Icon(Icons.visibility),
                            //   onPressed: () {
                            //     setState(() {
                            //       hidePassword = !hidePassword;
                            //     });
                            //   },
                            // ),
                          ),
                          // validator: (value) {
                          //   return (value == null || value.isEmpty)
                          //       ? 'Please Enter Password'
                          //       : null;
                          // },
                          // controller: passwordCtr,
                          // decoration: inputDecoration('Password', Icons.lock),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Material(
                  elevation: 0,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.screenHeight! * 0.02),
                    child: Text(
                      Constants.verifynumberhelp,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: GlobalColors.apptheme,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                onboarding1()
              ],
            ),
          ),
        ),
        SlidingUpPanel(
          borderRadius: const BorderRadius.only(
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
                    borderRadius: const BorderRadius.only(
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
                                    child: const Text(
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
        )
      ]),
    );
  }
}
