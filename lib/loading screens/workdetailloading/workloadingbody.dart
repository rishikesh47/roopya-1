import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:roopya_banking_app/workdesignation/workdesignation.dart';

import '../../reusable_widgets/header_widget.dart';
import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';
import '../../utils/size_config.dart';
class workBody extends StatefulWidget {
  const workBody({Key? key}) : super(key: key);

  @override
  _workBodyState createState() => _workBodyState();
}

class _workBodyState extends State<workBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  Stack(
          children: <Widget>[
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(

                                  padding:
                                  EdgeInsets.fromLTRB(0,MediaQuery.of(context).size.height * .100,0,0),
                                  child: Lottie.asset(

                                    "assets/workloading.json",
                                                       width: SizeConfig.screenWidth!*0.8,
                                    height: SizeConfig.screenHeight!*0.45 ,
                                  ),
                                ),
                    // Padding(
                    //   padding:  EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: SizeConfig.screenWidth!*0.7,
                    //     decoration: BoxDecoration(
                    //       border: Border.all(color: GlobalColors.vlightGrey),
                    //     ),
                    //     child: Text(
                    //       Constants.userworkEmployeeSubStatus,
                    //       style: TextStyle(color: GlobalColors.vlightGrey,fontWeight:FontWeight.bold),
                    //     ),
                    //   ),
                    // ),


                  ],

              ),
              // child: new Text("Hello background"),
            )
          ],
        )

      // body: SafeArea(
      //
      //   child: Container(
      //
      //     child: Column(
      //       children: <Widget>[
      //         Stack(
      //           alignment: Alignment.center,
      //           // fit: StackFit.values,
      //           children: <Widget>[
      //         Container(
      //           height:MediaQuery.of(context).size.height ,
      //           width:MediaQuery.of(context).size.width ,
      //     child: Image.asset("assets/background.png",
      //
      //         ),
      //
      //
      //         )
      //             // Container(
      //             //   height: MediaQuery.of(context).size.height ,
      //             //   padding:
      //             //   EdgeInsets.all(0),
      //             //   child: Image.asset(
      //             //
      //             //     "assets/background.png",
      //             //                        width: MediaQuery.of(context).size.width ,
      //             //
      //             //   ),
      //             // ),
      //             // Container(
      //             //     alignment: Alignment.center,
      //             //     child: Text(
      //             //       'Text Message',
      //             //       style: TextStyle(color: Colors.white,
      //             //           fontWeight: FontWeight.bold,
      //             //           fontSize: 22.0),
      //             //     )),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }
  route() {
    Get.to(() => workdesignation());
    // Navigator.pushReplacement(context, MaterialPageRoute(
    //     builder: (context) => onboarding5()
    // )
    // );
  }
}
