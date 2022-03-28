import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roopya_banking_app/journey/genderselect/genderselectbottom.dart';
import 'package:roopya_banking_app/loancalculate/footerloan.dart';
import 'package:roopya_banking_app/reusable_widgets/header_widget.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';
import '../../utils/size_config.dart';
import '../../verifymobile/verification.dart';
import 'package:fl_chart/fl_chart.dart';

class genderselect extends StatefulWidget {
  const genderselect({Key? key}) : super(key: key);

  @override
  State<genderselect> createState() => _genderselectState();
}

class _genderselectState extends State<genderselect> {
  static const IconData male = IconData(0xe3c5, fontFamily: 'MaterialIcons');
  static const IconData female = IconData(0xe261, fontFamily: 'MaterialIcons');
  bool focus1 = true;
  bool focus2 = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
                // color: Colors.white,
                decoration: BoxDecoration(
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
                    //       Color(0xff51C0FF),
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
                height: SizeConfig.screenHeight! * 0.69,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: HeaderSection(),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.08,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 22, top: 20 ),
                        child: Text(
                          Constants.genderselect,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 28.0,
                              color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 22,top: 2),
                        child: Text(
                          'Reference site about Lorem Ipsum',
                          style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,
                            fontFamily: 'DMSans',
                            fontSize: 16.0,),
                        ),
                      )
                    ],
                  ),
                ),
              ),

        ),
        Positioned(
          top: SizeConfig.screenHeight!*0.4,
          left: SizeConfig.screenWidth!*0.137,
          child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    setState(() {
                      focus1 = true;
                      focus2 = false;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          // border: Border.all(
                          //     width: 5, color: focus1 ? GlobalColors.appThemeColor1 : Colors.white),
                        border: Border.all(
                            width: 1, color: focus1 ?  Colors.transparent:Colors.blue),
                          color:focus1 ? Color(0xff0F9AFF) : Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: SizeConfig.screenWidth!*0.32,
                      height:SizeConfig.screenWidth!*0.32 ,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Icon(male,size:  SizeConfig.screenWidth!*0.15,color: focus1 ? Colors.white : GlobalColors.appThemeColor,),
                            Text ('Male',
                              style: TextStyle(
                                  fontFamily: 'DMSans',
                                  fontSize: 18.0,
                                  color: focus1 ? Colors.white : GlobalColors.appThemeColor, fontWeight: FontWeight.bold),)
                          ]
                      )
                  ),
                ),

                SizedBox(
                  width: SizeConfig.screenWidth!*0.07,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      focus1 = false;
                      focus2 = true;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          // boxShadow: [
                          //   BoxShadow(
                          //     color:GlobalColors.gender,
                          //     spreadRadius: 1,
                          //     blurRadius: 7,
                          //     offset: Offset(0, 3), // changes position of shadow
                          //   ),
                          // ],
                          border: Border.all(
                              width: 1, color: focus2 ?  Colors.transparent:Colors.blue),
                          borderRadius: BorderRadius.circular(10.0),
                          color:focus2 ? Color(0xff0F9AFF) : Colors.white
                      ),
                      width: SizeConfig.screenWidth!*0.32,
                      height:SizeConfig.screenWidth!*0.32 ,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Icon(female,size:  SizeConfig.screenWidth!*0.15,color: focus2 ? Colors.white : GlobalColors.appThemeColor),
                            Text ('Female',
                              style: TextStyle(
                                  fontFamily: 'DMSans',
                                  fontSize: 18.0,
                                  color: focus2 ? Colors.white : GlobalColors.appThemeColor, fontWeight: FontWeight.bold),)
                          ]
                      )
                  ),
                ),
              ]
          ) //Icon
        ),
        Positioned(
          bottom: 0.0,
          child: genderselectb(), //Icon
        ),
      ]),
    );
  }


}
