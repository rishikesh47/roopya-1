import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

class vmHeaderSection extends StatefulWidget {
  const vmHeaderSection({Key? key}) : super(key: key);

  @override
  _vmHeaderSectionState createState() => _vmHeaderSectionState();
}

class _vmHeaderSectionState extends State<vmHeaderSection> {
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
                child:Padding(
                  padding:  EdgeInsets.only(left:SizeConfig.screenHeight!*0.02),
                  child: Material(
                      child: Image.asset('assets/logoblue.png',color: Colors.blue[600],)),
                ),
              ),
              Expanded(
                child: Container(
                ),
              ),

              // Image.asset('assets/roopyalogo.png',height: 20,),

              // Expanded(
              //   child: Container(
              //   ),
              // ),
              Icon(Icons.menu, color: GlobalColors.mildblack),
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
