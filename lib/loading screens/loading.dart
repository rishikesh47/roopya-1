import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:roopya_banking_app/loading%20screens/loadingbottom1.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

import '../enterdetails/userdetailsbottom.dart';
import '../reusable_widgets/header_widget.dart';
import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';




class loader extends StatefulWidget {
  const loader({Key? key}) : super(key: key);

  @override
  State<loader> createState() => _loaderState();
}

class _loaderState extends State<loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            HeaderSection(),

            Container(

              padding:
              EdgeInsets.fromLTRB(0,MediaQuery.of(context).size.height *0.05,0,0),
              child: Lottie.asset(

                "assets/workloading.json",
                width: SizeConfig.screenWidth!*0.8,
                height: SizeConfig.screenHeight!*0.45 ,
              ),
            ),




            SizedBox(
              height: SizeConfig.screenHeight!*0.1,
            ),
            Container(
              width: SizeConfig.screenWidth!*0.75,
              child: Center(
                child: Text(
                  'Ipsum Dolor Sit Amet',
                  style: TextStyle(
                      wordSpacing: 5,
                      fontFamily: 'Roboto',
                      fontSize: 30.0,
                      color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: SizeConfig.screenWidth!*0.7,
              child: Center(
                child: Text(

                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used To demonstrate the visual form of a document or a typeface ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    wordSpacing: 1,
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: GlobalColors.vlightGrey, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(
              ),
            ),
            loadingbottom1()
          ],
        ),
      ),
    );
  }
}
