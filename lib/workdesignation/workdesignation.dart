import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/workdesignation/workdesignationbottom.dart';
import '../reusable_widgets/ListTileReusableWidget.dart';
import '../reusable_widgets/header_widget.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';

class workdesignation extends StatefulWidget {
  const workdesignation({Key? key}) : super(key: key);

  @override
  State<workdesignation> createState() => _workdesignationState();
}

class _workdesignationState extends State<workdesignation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            const HeaderSection(),
            // Padding(
            //   padding:  EdgeInsets.only(left:SizeConfig.screenHeight!*0.02),
            //   child: Image.asset('assets/roospyalogo.png'),
            // ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenHeight! * 0.025),
              child: Text(
                Constants.userworkEmployeeStatus,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: GlobalColors.apptheme,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenHeight! * 0.025),
              child: const Text(
                Constants.userworkEmployeeSubStatus,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(child: Container()),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.04),
            //     child: Row(
            //       children: [
            //         Container(
            //             width: 110,
            //             height: 50,
            //             child: Stack(children: <Widget>[
            //               Positioned(
            //                   top: 0,
            //                   left: 60,
            //                   child: Container(
            //                       width: 50,
            //                       height: 50,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.only(
            //                           topLeft: Radius.circular(26),
            //                           topRight: Radius.circular(26),
            //                           bottomLeft: Radius.circular(26),
            //                           bottomRight: Radius.circular(26),
            //                         ),
            //                         border: Border.all(
            //                           color: Color.fromRGBO(255, 255, 255, 1),
            //                           width: 2,
            //                         ),
            //                         image: DecorationImage(
            //                             image: AssetImage('assets/GUY1.png'),
            //                             fit: BoxFit.fitWidth),
            //                       ))),
            //               Positioned(
            //                   top: 0,
            //                   left: 30,
            //                   child: Container(
            //                       width: 50,
            //                       height: 50,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.only(
            //                           topLeft: Radius.circular(26),
            //                           topRight: Radius.circular(26),
            //                           bottomLeft: Radius.circular(26),
            //                           bottomRight: Radius.circular(26),
            //                         ),
            //                         border: Border.all(
            //                           color: Color.fromRGBO(255, 255, 255, 1),
            //                           width: 2,
            //                         ),
            //                         image: DecorationImage(
            //                             image: AssetImage('assets/GUY2.png'),
            //                             fit: BoxFit.fitWidth),
            //                       ))),
            //               Positioned(
            //                   top: 0,
            //                   left: 0,
            //                   child: Container(
            //                       width: 50,
            //                       height: 50,
            //                       decoration: BoxDecoration(
            //                         borderRadius: const BorderRadius.only(
            //                           topLeft: Radius.circular(26),
            //                           topRight: Radius.circular(26),
            //                           bottomLeft: Radius.circular(26),
            //                           bottomRight: Radius.circular(26),
            //                         ),
            //                         border: Border.all(
            //                           color: Color.fromRGBO(255, 255, 255, 1),
            //                           width: 2,
            //                         ),
            //                         image: DecorationImage(
            //                             image: AssetImage('assets/GIRL.png'),
            //                             fit: BoxFit.fitWidth),
            //                       ))),
            //             ])),
            //         // CircleAvatar(child: Image.asset('assets/GUY2.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.3), radius: SizeConfig.screenHeight!*0.03,),
            //         Spacer(),
            //         Padding(
            //           padding: EdgeInsets.only(
            //               right: SizeConfig.screenWidth! * 0.04),
            //           child: Container(
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //             ),
            //             width: SizeConfig.screenWidth! * 0.25,
            //             child: ElevatedButton(
            //               onPressed: () {
            //                 // _pageController.nextPage(
            //                 //   duration: Duration(milliseconds: 200),
            //                 //   curve: Curves.linear,
            //                 // );
            //                 // Get.to(FirstPolicy()),
            //                 // Navigator.push(
            //                 //   context,
            //                 //   MaterialPageRoute(builder: (context) => verificationotp()),
            //                 // );
            //               },
            //               child: const Text(
            //                 "Read more",
            //                 style: TextStyle(
            //                     color: Color(0xff0F9AFF),
            //                     fontWeight: FontWeight.w200),
            //               ),
            //               style: ElevatedButton.styleFrom(
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(25),
            //                 ),
            //                 fixedSize: Size(SizeConfig.screenWidth!,
            //                     SizeConfig.screenHeight! * 0.06),
            //                 primary: Color(0xff0F9AFF).withOpacity(0.3),
            //                 elevation: 0,
            //                 shadowColor: Colors.black87,
            //                 // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            //               ),
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(child: Container()),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.04),
                child: Column(
                  children: [
                    // Text("dlkw")
                    ListTileReusable(
                      titleText: "Employment Type",
                      prefixImg: const Icon(Icons.account_balance_rounded),
                      textField: const TextField(
                        decoration: InputDecoration(
                            // border: OutlineInputBorder().n,
                            hintText: "Select",
                            hintStyle: TextStyle(fontFamily: 'Raleway')),
                      ),
                      // subText: "klmm",
                    ),
                    SizedBox(height: 10),
                    ListTileReusable(
                        titleText: "Monthly Income",
                        prefixImg: Icon(Icons.shopping_bag),
                        textField: const TextField(
                          decoration: InputDecoration(
                              // border: OutlineInputBorder().n,
                              hintText: "Type here",
                              hintStyle: TextStyle(fontFamily: 'Raleway')),
                        ),
                        // subText: ""
                    ),
                    ListTileReusable(
                        titleText: "Other Income",
                        prefixImg: Icon(Icons.shopping_bag),
                        textField: const TextField(
                          decoration: InputDecoration(
                              // border: OutlineInputBorder().n,
                              hintText: "Type here",
                              hintStyle: TextStyle(fontFamily: 'Raleway')),
                        ),
                        // subText: ""
                    )
                    // Row(
                    //   children: [

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
                    // CircleAvatar(
                    //   child: Icon(
                    //     Icons.camera,
                    //     color: Color(0xff0F9AFF),
                    //     size: SizeConfig.screenHeight! * 0.045,
                    //   ),
                    //   backgroundColor: Color(0xff0F9AFF).withOpacity(0.3),
                    //   radius: SizeConfig.screenHeight! * 0.028,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       left: SizeConfig.screenWidth! * 0.04),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(
                    //             top: SizeConfig.screenWidth! * 0.01),
                    //         child: Text(
                    //           'Send sms permission',
                    //           style: TextStyle(
                    //               fontFamily: 'Roboto',
                    //               color: GlobalColors.apptheme,
                    //               fontSize:
                    //                   SizeConfig.screenHeight! * 0.028,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         height: SizeConfig.screenHeight! * 0.01,
                    //       ),
                    //       Container(
                    //         width: SizeConfig.screenWidth! * 0.8,
                    //         child: Text(
                    //           'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                    //           style: TextStyle(
                    //             fontFamily: 'Roboto',
                    //             color: Colors.grey,
                    //             fontSize: SizeConfig.screenHeight! * 0.023,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                    //   ],
                    // ),
                    // SizedBox(height: SizeConfig.screenHeight! * 0.045),
                    // Row(
                    //   children: [
                    //     // Checkbox(
                    //     //   checkColor: GlobalColors.appThemeColor,
                    //     //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
                    //     //   value: isChecked,
                    //     //   onChanged: (bool? value) {
                    //     //     setState(() {
                    //     //       isChecked = value!;
                    //     //     });
                    //     //   },
                    //     // ),
                    //     CircleAvatar(
                    //       child: Icon(
                    //         Icons.camera,
                    //         color: Color(0xff0F9AFF),
                    //         size: SizeConfig.screenHeight! * 0.045,
                    //       ),
                    //       backgroundColor: Color(0xff0F9AFF).withOpacity(0.3),
                    //       radius: SizeConfig.screenHeight! * 0.028,
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //           left: SizeConfig.screenWidth! * 0.04),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Padding(
                    //             padding: EdgeInsets.only(
                    //                 bottom: SizeConfig.screenWidth! * 0.01),
                    //             child: Center(
                    //               child: Text(
                    //                 'Phone state permission',
                    //                 style: TextStyle(
                    //                     fontFamily: 'Roboto',
                    //                     color: GlobalColors.apptheme,
                    //                     fontSize:
                    //                         SizeConfig.screenHeight! * 0.028,
                    //                     fontWeight: FontWeight.bold),
                    //               ),
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: SizeConfig.screenHeight! * 0.01,
                    //           ),
                    //           Container(
                    //             width: SizeConfig.screenWidth! * 0.8,
                    //             child: Center(
                    //               child: Text(
                    //                 'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                    //                 style: TextStyle(
                    //                   fontFamily: 'Roboto',
                    //                   color: Color(0xff959595),
                    //                   fontSize:
                    //                       SizeConfig.screenHeight! * 0.023,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     )
                    //   ],
                    // ),
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
                    // SizedBox(height: SizeConfig.screenHeight! * 0.045),
                    // Row(
                    //   children: [
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
                    // CircleAvatar(
                    //   child: Icon(
                    //     Icons.camera,
                    //     color: Color(0xff0F9AFF),
                    //     size: SizeConfig.screenHeight! * 0.045,
                    //   ),
                    //   backgroundColor: Color(0xff0F9AFF).withOpacity(0.3),
                    //   radius: SizeConfig.screenHeight! * 0.028,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       left: SizeConfig.screenWidth! * 0.04),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(
                    //             bottom: SizeConfig.screenWidth! * 0.01),
                    //         child: Center(
                    //           child: Text(
                    //             'Read sms permission',
                    //             style: TextStyle(
                    //                 fontFamily: 'Roboto',
                    //                 color: GlobalColors.apptheme,
                    //                 fontSize:
                    //                     SizeConfig.screenHeight! * 0.028,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         height: SizeConfig.screenHeight! * 0.01,
                    //       ),
                    //       Container(
                    //         width: SizeConfig.screenWidth! * 0.8,
                    //         child: Text(
                    //           'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
                    //           style: TextStyle(
                    //             fontFamily: 'Roboto',
                    //             color: Colors.grey,
                    //             fontSize: SizeConfig.screenHeight! * 0.023,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                    //   ],
                    // ),
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
            // Center(
            //   child: Container(
            //     // color: Colors.white,
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color:  Colors.black,
            //       ),
            //       borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(40.0),
            //         topLeft: Radius.circular(40.0),),
            //       color: Colors.white,
            //       // gradient: LinearGradient(
            //       //     begin: Alignment.topRight,
            //       //     end: Alignment.bottomLeft,
            //       //     stops: [
            //       //       0.1,
            //       //       0.4,
            //       //       0.6,
            //       //       0.9,
            //       //     ],
            //       //     colors: [
            //       //       Color(0xff1C7BC0),
            //       //       Color(0xff51C0FF)                 ,
            //       //       Color(0xff51C0FF),
            //       //       Color(0xff51C0FF),
            //       //     ]
            //       //   // colors: [
            //       //   //   Color(0xff2596be),
            //       //   //   Color(0xff1791A6),
            //       //   //   Color(0xff259AAC),
            //       //   //   Color(0xff52B7C1),
            //       //   // ],
            //       // )
            //     ),
            //     height: SizeConfig.screenHeight!*0.6,
            //     child: Padding(
            //       padding: EdgeInsets.only(left :SizeConfig.screenWidth!*0.04),
            //       child: Column(
            //         children: [
            //           SizedBox(
            //             height: SizeConfig.screenHeight!*0.05,
            //           ),
            //           Row(
            //             children: [
            //               // Checkbox(
            //               //   checkColor: GlobalColors.appThemeColor,
            //               //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
            //               //   value: isChecked,
            //               //   onChanged: (bool? value) {
            //               //     setState(() {
            //               //       isChecked = value!;
            //               //     });
            //               //   },
            //               // ),
            //               CircleAvatar(child: Icon(Icons.camera,color: Color(0xff0F9AFF),size: 37,),backgroundColor: Color(0xff0F9AFF).withOpacity(0.3), radius: 23,),
            //               Padding(
            //                 padding: EdgeInsets.only(left
            //                     : SizeConfig.screenWidth!*0.04),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children:  [
            //
            //                     Padding(
            //                       padding: EdgeInsets.only(top: SizeConfig.screenWidth!*0.01),
            //                       child: Text(
            //                         'Send sms permission',
            //                         style: TextStyle(
            //                             fontFamily: 'Roboto',
            //                             color: GlobalColors.apptheme,
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 3 ,
            //                     ),
            //                     Container(
            //                       width: SizeConfig.screenWidth!*0.8,
            //                       child: Text(
            //                         'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
            //                         style: TextStyle(
            //                           fontFamily: 'Roboto',
            //                           color: Colors.grey,
            //                           fontSize: 18,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //           SizedBox(height:25),
            //           Row(
            //             children: [
            //               // Checkbox(
            //               //   checkColor: GlobalColors.appThemeColor,
            //               //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
            //               //   value: isChecked,
            //               //   onChanged: (bool? value) {
            //               //     setState(() {
            //               //       isChecked = value!;
            //               //     });
            //               //   },
            //               // ),
            //               CircleAvatar(child: Icon(Icons.camera,color: Color(0xff0F9AFF),size: 37,),backgroundColor: Color(0xff0F9AFF).withOpacity(0.3), radius: 23,),
            //               Padding(
            //                 padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.04),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children:  [
            //
            //                     Padding(
            //                       padding: EdgeInsets.only(bottom: SizeConfig.screenWidth!*0.01 ),
            //                       child: Center(
            //                         child: Text(
            //                           'Phone state permission',
            //                           style: TextStyle(
            //                               fontFamily: 'Roboto',
            //                               color: GlobalColors.apptheme,
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 3 ,
            //                     ),
            //
            //                     Container(
            //                       width: SizeConfig.screenWidth!*0.8,
            //                       child: Center(
            //                         child: Text(
            //                           'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
            //                           style: TextStyle(
            //                             fontFamily: 'Roboto',
            //                             color: Color(0xff959595),
            //                             fontSize: 18,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //           // Row(
            //           //   children: [
            //           //     Checkbox(
            //           //       checkColor: GlobalColors.appThemeColor,
            //           //       // fillColor: MaterialStateProperty.resolveWith(getColor),
            //           //       value: isChecked,
            //           //       onChanged: (bool? value) {
            //           //         setState(() {
            //           //           isChecked = value!;
            //           //         });
            //           //       },
            //           //     ),
            //           //
            //           //     Column(
            //           //       crossAxisAlignment: CrossAxisAlignment.start,
            //           //       children:  const[
            //           //         Padding(
            //           //           padding: EdgeInsets.only(bottom: 5),
            //           //           child: Text(
            //           //             Constants.locationPermission,
            //           //             style: TextStyle(
            //           //                 color: Colors.white,
            //           //                 fontSize: 14,
            //           //                 fontWeight: FontWeight.bold),
            //           //           ),
            //           //         ),
            //           //
            //           //         Text(
            //           //           Constants.locationPermissionContent,
            //           //           style: TextStyle(
            //           //             color: Colors.white,
            //           //             fontSize: 12,
            //           //           ),
            //           //         ),
            //           //       ],
            //           //
            //           //     )],
            //           // ),
            //           SizedBox(height:25),
            //           Row(
            //             children: [
            //               // Checkbox(
            //               //   checkColor: GlobalColors.appThemeColor,
            //               //   // fillColor: MaterialStateProperty.resolveWith(Colors.accents),
            //               //   value: isChecked,
            //               //   onChanged: (bool? value) {
            //               //     setState(() {
            //               //       isChecked = value!;
            //               //     });
            //               //   },
            //               // ),
            //               CircleAvatar(child: Icon(Icons.camera,color: Color(0xff0F9AFF),size: 37,),backgroundColor: Color(0xff0F9AFF).withOpacity(0.3), radius: 23,),
            //               Padding(
            //                 padding:  EdgeInsets.only(left: SizeConfig.screenWidth!*0.04),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children:  [
            //
            //                     Padding(
            //                       padding: EdgeInsets.only(bottom: SizeConfig.screenWidth!*0.01 ),
            //                       child: Center(
            //                         child: Text(
            //                           'Read sms permission',
            //                           style: TextStyle(
            //                               fontFamily: 'Roboto',
            //                               color: GlobalColors.apptheme,
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 3 ,
            //                     ),
            //
            //                     Container(
            //                       width: SizeConfig.screenWidth!*0.8,
            //                       child: Text(
            //                         'Reference site about Lorem Ipsum, giving origins, as well as a random Lipsum generator.',
            //                         style: TextStyle(
            //                           fontFamily: 'Roboto',
            //                           color: Colors.grey,
            //                           fontSize: 18,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //
            //
            //
            //           // Row(
            //           //   children: [
            //           //     Checkbox(
            //           //       checkColor: GlobalColors.appThemeColor,
            //           //       // fillColor: MaterialStateProperty.resolveWith(getColor),
            //           //       value: isChecked,
            //           //       onChanged: (bool? value) {
            //           //         setState(() {
            //           //           isChecked = value!;
            //           //         });
            //           //       },
            //           //     ),
            //           //     Column(
            //           //       crossAxisAlignment: CrossAxisAlignment.start,
            //           //       children:  const[
            //           //         Padding(
            //           //           padding: EdgeInsets.only(bottom: 5),
            //           //           child: Text(
            //           //             Constants.locationPermission,
            //           //             style: TextStyle(
            //           //                 color: Colors.white,
            //           //                 fontSize: 14,
            //           //                 fontWeight: FontWeight.bold),
            //           //           ),
            //           //         ),
            //           //
            //           //         Text(
            //           //           Constants.locationPermissionContent,
            //           //           style: TextStyle(
            //           //             color: Colors.white,
            //           //             fontSize: 12,
            //           //           ),
            //           //         ),
            //           //       ],
            //           //
            //           //     )
            //           //   ],
            //           // ),
            //
            //         ],
            //       ),
            //     ),
            //   ),
            //
            //
            //
            // ),
            Expanded(child: Container()),
            onboarding11()
          ],
        ),
      ),
    );
  }
}
