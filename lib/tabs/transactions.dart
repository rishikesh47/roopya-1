
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

// import 'bottom_container.dart';

class transactions extends StatefulWidget {
  @override
  transactionsstate createState() => transactionsstate();
}

class transactionsstate extends State<transactions> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(


      child: Column(
          children: [
            Container(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children:  [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.03,
                      ),
                      Row(
                        children: [
                          Text("Amount",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.black,
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
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
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
                          Text("Success",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Date & Time",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("16 FEB 2022, 6:26 pm",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Transaction ID",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("48723648726348",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Payment Mode",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("E_nach",style: TextStyle(
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
                  padding:  EdgeInsets.all(25.0),
                  child: Column(
                    children:  [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.03,
                      ),
                      Row(
                        children: [
                          Text("Amount",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.black,
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
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
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
                          Text("Success",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Date & Time",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("16 MAR 2022, 7:26 pm",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Transaction ID",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("48723648726457",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.005,
                      ),
                      Row(
                        children: [
                          Text("Payment Mode",style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.grey,
                              letterSpacing: 0,
                              fontWeight:FontWeight.bold
                          ),),
                          Spacer(),
                          Text("E_nach",style: TextStyle(
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



          ]
      ),
      // const BottomContent()


    );
  }
}
