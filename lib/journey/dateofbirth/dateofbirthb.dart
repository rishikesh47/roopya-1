import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/journey/fullname&maritalstatus/maritalstatus.dart';
import 'package:roopya_banking_app/journey/genderselect/genderselect.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../utils/size_config.dart';









class dateofbirthb extends StatefulWidget {


  @override
  _dateofbirthbState createState() => _dateofbirthbState();
}

class _dateofbirthbState extends State<dateofbirthb> {


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Container(
      height: SizeConfig.screenHeight!*0.08,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
        child: Column(
          children: [
                ElevatedButton(
                onPressed: () {
                  // Get.to(FirstPolicy()),
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => marital()),
                  );

                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w200 ),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(SizeConfig.screenWidth!*1,SizeConfig.screenHeight!*0.08),
                    primary: Colors.lightBlue,
                    elevation: 0,
                    shadowColor: Colors.black87,
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
            ),
          ],
        ),
      );
  }
}
