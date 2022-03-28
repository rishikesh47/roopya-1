import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
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
                  Icons.arrow_back_ios,
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
              Icon(Icons.menu, color: GlobalColors.mildblack,),
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
