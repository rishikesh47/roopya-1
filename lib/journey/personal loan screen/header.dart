import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

class HeaderSection1 extends StatefulWidget {
  const HeaderSection1({Key? key}) : super(key: key);

  @override
  _HeaderSection1State createState() => _HeaderSection1State();
}

class _HeaderSection1State extends State<HeaderSection1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap:(){

                },
                child: Icon(
                  Icons.menu,
                  color: GlobalColors.mildblack,
                  size: SizeConfig.screenHeight!*0.03,
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth!*0.03,
              ),
              // Text("Verify",
              // style: TextStyle(
              //     fontSize: 20.0,
              //     fontFamily: 'Roboto',
              //     color:  Colors.grey,
              //     letterSpacing: 0.5,
              //     wordSpacing:-5
              // ),),
              Expanded(
                child: Container(
                ),
              ),

              // Image.asset('assets/roopyalogo.png',height: 20,),

              // Expanded(
              //   child: Container(
              //   ),
              // ),
              // Icon(Icons.menu, color: GlobalColors.mildblack,),
            ],
          ),
        ),
        Divider(
          height: 20,
          thickness: 1,
          // indent: 20,
          // endIndent: 0,
          color: Colors.black,
        )
      ],
    );
  }
}
