import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/tabs/details.dart';
import 'package:roopya_banking_app/tabs/emi%20calendar.dart';
import 'package:roopya_banking_app/tabs/transactions.dart';
import 'package:roopya_banking_app/utils/size_config.dart';




import '../../../theme/app_theme.dart';





class kyc extends StatefulWidget {
  const kyc({Key? key}) : super(key: key);


  @override
  kycpage createState() => kycpage();
}



class kycpage extends State<kyc> with SingleTickerProviderStateMixin{
  int tabIndex = 0;
  // final bottom = MediaQuery.of(context).viewInsets.bottom;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabIndex,
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // ignore: unnecessary_new
        appBar: new AppBar(
          elevation: 0.0,
          centerTitle: false,
          // iconTheme:  IconThemeData(
          //     color: Colors.black
          // ),
          backgroundColor: Colors.white,
          leadingWidth: SizeConfig.screenWidth!*0.1,
          leading: Column(
              mainAxisAlignment:MainAxisAlignment.center,
            children: [
              // Text('Update KYC', style: TextStyle(
              //       fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
              Icon(Icons.arrow_back,color: GlobalColors.apptheme,)
            ],
          ),


          bottom: PreferredSize(

            preferredSize: Size.fromHeight(SizeConfig.screenHeight!*0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: SizeConfig.screenWidth!/1.2,
                    child: TabBar(
                      labelStyle:  TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: Colors.black,
                        letterSpacing: 0,
                        fontWeight:FontWeight.bold
                    ),
                      unselectedLabelColor: Colors.black26,
                      labelColor: Colors.blue,
                      isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        automaticIndicatorColorAdjustment: true,
                      indicatorWeight: 3.0,
                        indicatorColor: Colors.blue,
                      tabs: <Widget>[
                        Tab(text: 'Details',),
                        Tab( text: "EMI Calendar"),
                        Tab( text: "Transactions"),
                      ]

                    ),
                  ),
                ),



          ),
        ),
        body: TabBarView(
            children: <Widget>[
               details(),
              emi(),
              transactions(),

            ]
        ),


      ),


    );
  }
}
