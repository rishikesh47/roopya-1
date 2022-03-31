import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterdetails/user_details_screen.dart';
import 'package:roopya_banking_app/enterjobdetails/userjobdetails_screen.dart';
import 'package:roopya_banking_app/loancalculate/loan%20main.dart';

import '../journey/personal_loan/personal_loan.dart';




class loadingbottom1 extends StatefulWidget {
  const loadingbottom1({Key? key}) : super(key: key);

  @override
  _loadingbottom1State createState() => _loadingbottom1State();
}

class _loadingbottom1State extends State<loadingbottom1> {

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

    return SizedBox(
        child: Container(

          child: Column(
            children: [
                 ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => loancalculate()),
                    // );// Get.to(FirstPolicy()),
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PersonalLoanScreen()),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const FirstPolicy()),
                    // );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(MediaQuery.of(context).size.width *1, 50),
                      primary: Colors.lightBlue,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                ),

            ],
          ),
        )
    );
  }
}
