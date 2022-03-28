import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/journey/personal%20loan%20screen/footerloan.dart';
import 'package:roopya_banking_app/journey/personal%20loan%20screen/header.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';



class loanscreen extends StatefulWidget {
  const loanscreen({Key? key}) : super(key: key);

  @override
  State<loanscreen> createState() => _loanscreenState();
}

class _loanscreenState extends State<loanscreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: HeaderSection1(),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.02,
                  ),
                  // Padding(
                  //   padding:  EdgeInsets.only(left: SizeConfig.screenWidth!*0.08, top:SizeConfig.screenWidth!*0.05 ),
                  //   child: Text(
                  //     Constants.dateofbirth,
                  //     style: TextStyle(
                  //         fontFamily: 'Noah',
                  //         fontSize: 28.0,
                  //         color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // Padding(
                  //   padding:  EdgeInsets.only(left: SizeConfig.screenWidth!*0.08,top: SizeConfig.screenWidth!*0.025),
                  //   child: Text(
                  //     'Reference site about Lorem Ipsum',
                  //     style: TextStyle(color: Color(0xff6C6C6C),fontWeight:FontWeight.bold,
                  //       fontFamily: 'Roboto',
                  //       fontSize: 14.0,),
                  //   ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04, right: SizeConfig.screenWidth!*0.04,),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: GlobalColors.apptheme
                      ),
                      height: SizeConfig.screenHeight!*0.27,
                      child: Padding(
                        padding: EdgeInsets.all(SizeConfig.screenWidth!*0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Icon(Icons.person,color: Colors.white,),
                               SizedBox(
                                 width: SizeConfig.screenWidth!*0.02,
                               ),
                               Text(
                                   'Personal Loan',
                                   style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,
                                     fontFamily: 'Roboto',
                                     fontSize: 14.0,),
                               )
                             ]
                           ),
                           SizedBox(
                               height: SizeConfig.screenWidth!*0.012,
                           ),

                           Text(
                             'Emi auto debit on 16th April 22',
                             style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,
                               fontFamily: 'Roboto',
                               fontSize: 15.0,),
                           ),
                           SizedBox(
                             height: SizeConfig.screenWidth!*0.021,
                           ),

                           Text(
                             '\u{20B9} 30000',
                             style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,
                               fontFamily: 'Roboto',
                               fontSize: 27.0,),
                           ),
                           SizedBox(
                             height: SizeConfig.screenWidth!*0.025,
                           ),

                           Row(
                               children: [
                                 Spacer(),
                                 Padding(
                                   padding:  EdgeInsets.only(right: SizeConfig.screenWidth!*0.04),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       border: Border.all(width: 2.0, color:  Colors.white),
                                       borderRadius: BorderRadius.circular(5),
                                     ),
                                     width: SizeConfig.screenWidth!*0.3 ,
                                     child:   ElevatedButton(
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

                                       },
                                       child:  Text(
                                         "Loan details",
                                         style: TextStyle(color: Colors.white  ,fontWeight: FontWeight.bold ),
                                       ),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(25),
                                         ),
                                         fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.06),
                                         primary: GlobalColors.apptheme,
                                         elevation: 0,
                                         shadowColor: Colors.black87,
                                         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                       ),
                                     ),
                                   ),
                                 ),
                                 Spacer(),
                                 Padding(
                                   padding:  EdgeInsets.only(right: SizeConfig.screenWidth!*0.04),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(width: 0.0, color:  Colors.green),
                                       borderRadius: BorderRadius.circular(5),
                                     ),
                                     width: SizeConfig.screenWidth!*0.3 ,
                                     child:   ElevatedButton(
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

                                       },
                                       child:  Text(
                                         "Loan details",
                                         style: TextStyle(color: Colors.white  ,fontWeight: FontWeight.w200 ),
                                       ),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(8),
                                         ),
                                         fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.06),
                                         primary: Colors.green,
                                         elevation: 0,
                                         shadowColor: Colors.green,
                                         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                       ),
                                     ),
                                   ),
                                 ),
                                 Spacer(),
                               ]
                           ),

                          ]
                        ),
                      ),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04, top: SizeConfig.screenHeight! * 0.03, right: SizeConfig.screenWidth!*0.04),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color:  Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: SizeConfig.screenHeight!*0.26,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.0,right: 8.0,top: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: SizeConfig.screenWidth!*0.1,

                                child: Text(
                                  'New',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 15.0,),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight!*0.02,
                            ),
                            Text(
                              'Health insurance',
                              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 15.0,),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight!*0.01,
                            ),
                            Text(
                              'What is the total budget of what is total budget\ncampaign',
                              style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 13.0,),
                            ),
                            Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: SizeConfig.screenHeight!*0.03,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(right: 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            boxShadow:[ BoxShadow(
                                              color: Colors.black.withOpacity(0.25), //color of shadow
                                              spreadRadius: 0, //spread radius
                                              blurRadius: 4, // blur radius
                                              offset: Offset(0, 4), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            ],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          width: SizeConfig.screenWidth!*0.30 ,
                                          child:   ElevatedButton(
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

                                            },
                                            child: Text(
                                              "Buy Insurance",
                                              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w200 ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.06),
                                              primary: Color(0xff0F9AFF),
                                              elevation: 0,
                                              shadowColor: Colors.black87,
                                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset('assets/devices.png',height: SizeConfig.screenHeight!*0.12,fit: BoxFit.cover,),
                                ]
                            ),

                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04, top: SizeConfig.screenHeight! * 0.03, right: SizeConfig.screenWidth!*0.04,),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color:  Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: SizeConfig.screenHeight!*0.21,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Home Loan',
                              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 15.0,),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight!*0.01,
                            ),
                            Text(
                              'What is the total budget of what is total budget\ncampaign',
                              style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 13.0,),
                            ),
                            Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: SizeConfig.screenHeight!*0.03,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(right: 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            boxShadow:[ BoxShadow(
                                              color: Colors.black.withOpacity(0.25), //color of shadow
                                              spreadRadius: 0, //spread radius
                                              blurRadius: 4, // blur radius
                                              offset: Offset(0, 4), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            ],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          width: SizeConfig.screenWidth!*0.30 ,
                                          child:   ElevatedButton(
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

                                            },
                                            child: Text(
                                              "Apply Now",
                                              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w200 ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.06),
                                              primary: Color(0xff0F9AFF),
                                              elevation: 0,
                                              shadowColor: Colors.black87,
                                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset('assets/house.png',height: SizeConfig.screenHeight!*0.12,fit: BoxFit.cover,),
                                ]
                            ),

                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04, top: SizeConfig.screenHeight! * 0.03, right: SizeConfig.screenWidth!*0.04,),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color:  Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: SizeConfig.screenHeight!*0.27,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: SizeConfig.screenHeight!*0.02,
                            ),
                            Text(
                              'Personal Loan',
                              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 15.0,),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight!*0.01,
                            ),
                            Text(
                              'What is the total budget of what is total budget\ncampaign',
                              style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,
                                fontFamily: 'Roboto',
                                fontSize: 13.0,),
                            ),
                            Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: SizeConfig.screenHeight!*0.03,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(right: SizeConfig.screenWidth!*0.04),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            boxShadow:[ BoxShadow(
                                              color: Colors.black.withOpacity(0.25), //color of shadow
                                              spreadRadius: 0, //spread radius
                                              blurRadius: 4, // blur radius
                                              offset: Offset(0, 4), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                            ],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          width: SizeConfig.screenWidth!*0.30 ,
                                          child:   ElevatedButton(
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

                                            },
                                            child: Text(
                                              "Apply Now",
                                              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w200 ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              fixedSize: Size(SizeConfig.screenWidth!,SizeConfig.screenHeight!*0.06),
                                              primary: Color(0xff0F9AFF),
                                              elevation: 0,
                                              shadowColor: Colors.black87,
                                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset('assets/house.png',height: SizeConfig.screenHeight!*0.12),
                                ]
                            ),

                          ],
                        ),
                      ),

                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04, top: SizeConfig.screenHeight! * 0.01 ,right: SizeConfig.screenWidth!*0.04,),
                  //   child: Container(
                  //     height: SizeConfig.screenHeight!*0.2,
                  //     color: Colors.red,
                  //
                  //   ),
                ],

          ),
        ),
             Positioned(bottom: 0,
                 child: footerloan2())
      ],
    );
  }
}
