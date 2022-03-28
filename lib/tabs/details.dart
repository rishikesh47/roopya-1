
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

// import 'bottom_container.dart';

class details extends StatefulWidget {
  @override
  detailsstate createState() => detailsstate();
}

class detailsstate extends State<details> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(


      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth!*0.02),
              child: Column(

               children:  [
                 SizedBox(
                   height: SizeConfig.screenHeight!*0.0001,
                 ),
                 Container(
                     child: Padding(
                       padding: EdgeInsets.all(20.0),
                       child: Column(
                         children:  [
                           SizedBox(
                             height: SizeConfig.screenHeight!*0.01,
                           ),
                           Row(
                             children: [
                               Text("Loan Account Number",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.black,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("60124533046",style: TextStyle(
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
                               Text("Loan Amount",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               // Icon(Icons.verified, color: Colors.blue,
                               Text("\u{20B9} 10000",style: TextStyle(
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
                               Text("Annual Interest",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("17 %",style: TextStyle(
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
                               Text("Processing FEE(incl GST)",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("\u{20B9} 1,769",style: TextStyle(
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
                               Text("Loan Disbursed",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("\u{20B9} 8.231",style: TextStyle(
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
                   height: SizeConfig.screenHeight!*0.001,
                 ),
                 Container(
                     child: Padding(
                       padding: EdgeInsets.all(20.0),
                       child: Column(
                         children:  [
                           SizedBox(
                             height: SizeConfig.screenHeight!*0.03,
                           ),
                           SizedBox(
                             height: SizeConfig.screenHeight!*0.008,
                           ),
                           Row(
                             children: [
                               Text("Loan Tenure",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.black,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("3 Months",style: TextStyle(
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
                               Text("EMI Amount",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               // Icon(Icons.verified, color: Colors.blue,
                               Text("\u{20B9} 3,428",style: TextStyle(
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
                               Text("Loan Start Date",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("31st Jan 2022",style: TextStyle(
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
                               Text("Loan End Date",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("16th April 2022",style: TextStyle(
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
                   height: SizeConfig.screenHeight!*0.001,
                 ),
                 Container(
                     child: Padding(
                       padding: EdgeInsets.all(20.0),
                       child: Column(
                         children:  [
                           SizedBox(
                             height: SizeConfig.screenHeight!*0.03,
                           ),
                           Row(
                             children: [
                               Text("Bank",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.black,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("HDFC BANK",style: TextStyle(
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
                               Text("Account Number",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               // Icon(Icons.verified, color: Colors.blue,
                               Text("60124533046",style: TextStyle(
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
                               Text("IFSC",style: TextStyle(
                                   fontFamily: 'Montserrat',
                                   fontSize: 15,
                                   color: Colors.grey,
                                   letterSpacing: 0,
                                   fontWeight:FontWeight.bold
                               ),),
                               Spacer(),
                               Text("HDFC000001",style: TextStyle(
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


                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Text("Loan Account Statement",style: TextStyle(
                               fontFamily: 'Montserrat',
                               fontSize: 15,
                               color: Colors.grey,
                               letterSpacing: 0,
                               fontWeight:FontWeight.bold
                           ),),
                           Spacer(),
                           Icon(Icons.download,color: Colors.blue,)
                         ],
                       ),
                     ],
                   ),
                 ),


                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Text("Loan Agreement",style: TextStyle(
                               fontFamily: 'Montserrat',
                               fontSize: 15,
                               color: Colors.grey,
                               letterSpacing: 0,
                               fontWeight:FontWeight.bold
                           ),),
                           Spacer(),
                           Icon(Icons.download,color: Colors.blue,)
                         ],
                       ),
                     ],
                   ),
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
