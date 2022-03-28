
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

// import 'bottom_container.dart';

class emi extends StatefulWidget {
  @override
  emistate createState() => emistate();
}

class emistate extends State<emi> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(


      child: Column(
          children: [
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children:  [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.03,
                      ),
                      Row(
                        children: [
                          Text("1st EMI Due Date",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("16th Feb 2022",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Status",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Icon(Icons.verified, color: Colors.blue,
                          ),
                          Text("Paid",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Amount",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("\u{20B9} 3428",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),


                    ],
                  ),
                )
            ),
            SizedBox(
              height: SizeConfig.screenHeight!*0.02,
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children:  [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.03,
                      ),
                      Row(
                        children: [
                          Text("2nd EMI Due Date",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("16th Mar 2022",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Status",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Icon(Icons.verified, color: Colors.blue,
                          ),
                          Text("Paid",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Amount",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("\u{20B9} 3428",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),


                    ],
                  ),
                )
            ),
            SizedBox(
              height: SizeConfig.screenHeight!*0.03,
            ),
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children:  [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.03,
                      ),
                      Row(
                        children: [
                          Text("3rd EMI Due Date",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.black,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("16th Feb 2022",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Status",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Icon(Icons.calendar_today_outlined, color: Colors.blue,
                          ),
                          Text("Scheduled",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.008,
                      ),
                      Row(
                        children: [
                          Text("Amount",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("\u{20B9} 3353",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),


                    ],
                  ),
                )
            ),
            SizedBox(
              height: SizeConfig.screenHeight!*0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Please Note:",textAlign: TextAlign.left,style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.black,
                      letterSpacing: 0,
                      fontWeight:FontWeight.bold
                  ),),
                  Text("Your Last EMI amount is different from other EMI as the interest from loan"
                      "dispursal date............",style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey,
                      letterSpacing: 0,
                      fontWeight:FontWeight.bold
                  ),),
                ],
              ),
            ),


          ]
      ),
      // const BottomContent()


    );
  }
}
