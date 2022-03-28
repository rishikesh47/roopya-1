import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:roopya_banking_app/journey/dateofbirth/dateofbirthb.dart';
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

class dateofbirth extends StatefulWidget {
  const dateofbirth({Key? key}) : super(key: key);

  @override
  State<dateofbirth> createState() => _dateofbirthState();
}

class _dateofbirthState extends State<dateofbirth> {
  static const IconData male = IconData(0xe3c5, fontFamily: 'MaterialIcons');
  static const IconData female = IconData(0xe261, fontFamily: 'MaterialIcons');
  TextEditingController dateofbirth = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(

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
                        padding:  EdgeInsets.only(left: SizeConfig.screenWidth!*0.08, top:SizeConfig.screenWidth!*0.05 ),
                        child: Text(
                          Constants.dateofbirth,
                          style: TextStyle(
                              fontFamily: 'Noah',
                              fontSize: 28.0,
                              color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: SizeConfig.screenWidth!*0.08,top: SizeConfig.screenWidth!*0.025),
                        child: Text(
                          'Reference site about Lorem Ipsum',
                          style: TextStyle(color: Color(0xff6C6C6C),fontWeight:FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 14.0,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
        ),
        Positioned(
            top: SizeConfig.screenHeight!*0.44,
            left: SizeConfig.screenWidth!*0.08,
            child:  Material(
              elevation: 4,
              child: Stack(
                  children: [
                    Container(
                        width: SizeConfig.screenWidth!*0.84,
                        height: SizeConfig.screenHeight!*0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 3),
                          ],
                        ),
                        child: TextFormField(
                          // showCursor: false,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Noah',
                              color:  GlobalColors.apptheme,

                          ),
                          cursorColor: Color(0xff2D3092),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            MaskedInputFormatter(' ##-##-##')
                          ],
                          validator: (value) {
                            return (value == null || value.isEmpty)
                                ? 'Enter your number'
                                : null;
                          },
                          controller: dateofbirth,
                          /*  onChanged: (value) {
                               print(value);
                             },*/
                          obscureText: false, //show/hide password
                          decoration: InputDecoration(
                            // prefixIcon: Padding(
                            //     padding:  EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                            //     child: Container(
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.only(topLeft:Radius.circular(3),bottomLeft: Radius.circular(3)),
                            //           boxShadow: [
                            //             BoxShadow(color: Color(0xffE3F2FD), spreadRadius: 3),
                            //           ],
                            //           color:Colors.green,
                            //         ),
                            //         child: Icon(Icons.calendar_today_outlined,color:Color(0xFF031A6E),))
                            // ),
                            // Color(0xFF031A6E)
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 12, horizontal: 12 ,),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: GlobalColors.subtextandborder)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:  BorderSide(color: GlobalColors.subtextandborder   )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:  BorderSide(color:  GlobalColors.subtextandborder)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:  BorderSide(color:  GlobalColors.subtextandborder)),
                            hintText: "DD-MM-YY",
                            hintStyle: TextStyle(color: GlobalColors.subtextandborder,fontWeight: FontWeight.w900)
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
                  ]
              ),
            ), //Icon
        ),
        Positioned(
          bottom: 0.0,
          child: dateofbirthb(), //Icon
        ),
      ]),
    );
  }


}
