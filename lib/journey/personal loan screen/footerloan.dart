import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/journey/genderselect/genderselect.dart';
import 'package:roopya_banking_app/journey/personal%20loan%20screen/personal%20loan.dart';
import 'package:roopya_banking_app/tabs/kyc.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../utils/size_config.dart';









class footerloan2 extends StatefulWidget {


  @override
  _footerloan2State createState() => _footerloan2State();
}

class _footerloan2State extends State<footerloan2> {


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
                    MaterialPageRoute(builder: (context) => kyc()),
                  );

                },
                child: const Text(
                  "Apply Loan",
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
