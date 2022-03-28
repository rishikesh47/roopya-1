import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:roopya_banking_app/utils/size_config.dart';



class recharge extends StatefulWidget {
  const recharge({Key? key}) : super(key: key);

  @override
  State<recharge> createState() => _rechargeState();
}

class _rechargeState extends State<recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight!*0.18,
            width: SizeConfig.screenWidth!,
            decoration: BoxDecoration (
                color: Color(0xff0094FF),
                border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(SizeConfig.screenHeight!*0.04),
                  bottomRight: Radius.circular(SizeConfig.screenHeight!*0.04),
                  )),
            child: Padding(
              padding:EdgeInsets.only(top:SizeConfig.screenHeight!*0.02,left:SizeConfig.screenHeight!*0.02 ),
              child: Row(
                children: [
                  CircleAvatar(child: Image.asset('assets/img.png'),
                  radius: SizeConfig.screenHeight!*0.04,),
                  SizedBox(
                    width: SizeConfig.screenWidth!*0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight!*0.05,
                      ),
                      Text( 'Alex Lee',

                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: SizeConfig.screenHeight!*0.03,
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text( 'Lorem Ipsum',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize:SizeConfig.screenHeight!*0.02 ,
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.screenHeight!*0.015),
                    child: Icon(Icons.notifications,color: Colors.white,),
                  )
                ],
              ),
            )

          ),
          SizedBox(
            height: SizeConfig.screenHeight!*0.04,
          ),
          SingleChildScrollView(
            reverse: true,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: SizeConfig.screenHeight!*0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Color(0xff6363633D).withOpacity(0.3),
                      ),
                    ],
                  ),
                    height:SizeConfig.screenHeight!*0.225,
                    width: SizeConfig.screenWidth!*0.35,
                        child: Padding(
                          padding:  EdgeInsets.all(SizeConfig.screenHeight!*0.01),
                          child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Lorem Ipsum",style: TextStyle(
                                          color: Color(0xff0094FF)
                                      ),),
                                      Text("All of these box-shadow were All these boxshadow",style: TextStyle(
                                          color: Color(0xff8D8D8D)
                                      ),),
                                      InkWell(
                                        child: Text("Read more",style: TextStyle(
                                            color: Color(0xffE89431)
                                        ),),
                                      ),
                                    ]
                                ),
                        ),
                ),
                SizedBox(
                  width: SizeConfig.screenHeight!*0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Color(0xff6363633D).withOpacity(0.3),
                      ),
                    ],
                  ),
                  height:SizeConfig.screenHeight!*0.225,
                  width: SizeConfig.screenWidth!*0.35,
                  child: Padding(
                    padding:  EdgeInsets.all(SizeConfig.screenHeight!*0.01),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Lorem Ipsum",style: TextStyle(
                              fontFamily: "Roboto",
                              color: Color(0xff0094FF)
                          ),),
                          Text("All of these box-shadow were All these boxshadow",style: TextStyle(
                              color: Color(0xff8D8D8D),
                            fontFamily: "Roboto",
                          ),),
                          InkWell(
                            child: Text("Read more",style: TextStyle(
                                fontFamily: "Roboto",
                                color: Color(0xffE89431)
                            ),),
                          ),
                        ]
                    ),
                  ),
                ),

                SizedBox(
                  width: SizeConfig.screenHeight!*0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Color(0xff6363633D).withOpacity(0.3),
                      ),
                    ],
                  ),
                  height:SizeConfig.screenHeight!*0.225,
                  width: SizeConfig.screenWidth!*0.35,
                  child: Padding(
                    padding:  EdgeInsets.all(SizeConfig.screenHeight!*0.01),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Lorem Ipsum",style: TextStyle(
                              color: Color(0xff0094FF)
                          ),),
                          Text("All of these box-shadow were All these boxshadow",style: TextStyle(
                              color: Color(0xff8D8D8D)
                          ),),
                          InkWell(
                            child: Text("Read more",style: TextStyle(
                                color: Color(0xffE89431)
                            ),),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenHeight!*0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Color(0xff6363633D).withOpacity(0.3),
                      ),
                    ],
                  ),
                  height:SizeConfig.screenHeight!*0.225,
                  width: SizeConfig.screenWidth!*0.35,
                  child: Padding(
                    padding:  EdgeInsets.all(SizeConfig.screenHeight!*0.01),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Lorem Ipsum",style: TextStyle(
                            fontFamily: "Roboto",
                              color: Color(0xff0094FF)
                          ),),
                          Text("All of these box-shadow were All these boxshadow",style: TextStyle(
                              color: Color(0xff8D8D8D)
                          ),),
                          InkWell(
                            child: Text("Read more",style: TextStyle(
                                color: Color(0xffE89431)
                            ),),
                          ),
                        ]
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight!*0.001,
          ),
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Positioned(top:SizeConfig.screenHeight!*0.03,child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff0094FF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft:Radius.circular(20)
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: Offset(0, 4),
                    //     blurRadius: 4,
                    //     spreadRadius: 2,
                    //     color: Color(0xff6363633D).withOpacity(0.3),
                    //   ),
                    // ],
                  ),
                    width: SizeConfig.screenWidth!*1,
                    height: SizeConfig.screenHeight!*0.28,
                    child: Padding(
                      padding:  EdgeInsets.all(SizeConfig.screenHeight!*0.04),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(child: Image.asset('assets/QR.png'),backgroundColor: Colors.white,radius: SizeConfig.screenHeight!*0.035,),
                              SizedBox(
                                height: SizeConfig.screenHeight!*0.013,
                              ),
                      Text("Scan Any QR",style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.white
                      ))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              CircleAvatar(child: Image.asset('assets/UPI.png'),backgroundColor: Colors.white,radius: SizeConfig.screenHeight!*0.035,),
                              SizedBox(
                                height: SizeConfig.screenHeight!*0.013,
                              ),
                              Text("UPI Send Money",style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.white
                              ))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              CircleAvatar(child: Image.asset('assets/ADDMONEY.png'),backgroundColor: Colors.white,radius: SizeConfig.screenHeight!*0.035,),
                              SizedBox(
                                height: SizeConfig.screenHeight!*0.013,
                              ),
                              Text("ADD Money",style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.white
                              ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                     Positioned(top:SizeConfig.screenHeight!*0.25,left: SizeConfig.screenWidth!*0.05,child: Container(
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft:Radius.circular(20)
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     offset: Offset(0, 4),
                        //     blurRadius: 4,
                        //     spreadRadius: 2,
                        //     color: Color(0xff6363633D).withOpacity(0.3),
                        //   ),
                        // ],
                      ),
                      width: SizeConfig.screenWidth!*0.9,
                      child: Column(

                        children: [
                          SizedBox(
                            height:SizeConfig.screenHeight!*0.008,
                          ),
                          Text("Recharge and Bill Payments",style: TextStyle(
                              fontFamily: "Roboto",
                              color: Color(0xff0094FF),
                               fontSize: SizeConfig.screenHeight!*0.023,
                               fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            height:SizeConfig.screenHeight!*0.023,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:SizeConfig.screenWidth!*0.05,right:SizeConfig.screenWidth!*0.05 ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  children: [
                                    Container(decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                          color: Color(0xff6363633D).withOpacity(0.3),
                                        ),
                                      ],
                                    ),
                                        child: CircleAvatar(child: Image.asset('assets/mobile.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Mobile",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/dth.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("DTH",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/electricity.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Electricity",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/gasbook.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Gas Book",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:SizeConfig.screenHeight!*0.023,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:SizeConfig.screenWidth!*0.05,right:SizeConfig.screenWidth!*0.05 ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  children: [
                                    Container(decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                          color: Color(0xff6363633D).withOpacity(0.3),
                                        ),
                                      ],
                                    ),
                                        child: CircleAvatar(child: Image.asset('assets/mobile.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Mobile",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/dth.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("DTH",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/electricity.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Electricity",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              color: Color(0xff6363633D).withOpacity(0.3),
                                            ),
                                          ],
                                        ),child: CircleAvatar(child: Image.asset('assets/gasbook.png'),backgroundColor: Color(0xff0F9AFF).withOpacity(0.16),radius: SizeConfig.screenHeight!*0.035,)),
                                    SizedBox(
                                      height: SizeConfig.screenHeight!*0.013,
                                    ),
                                    Text("Gas Book",style: TextStyle(
                                        fontFamily: "Roboto",
                                        color: Colors.black
                                    ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                    )),
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}
