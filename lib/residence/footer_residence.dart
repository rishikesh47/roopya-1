import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterjobdetails/userjobdetails_screen.dart';

import '../utils/size_config.dart';

class FooterResidence extends StatefulWidget {
  @override
  _FooterResidenceState createState() => _FooterResidenceState();
}

class _FooterResidenceState extends State<FooterResidence> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * 0.08,
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Get.to(FirstPolicy()),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserjobDetails()),
              );
            },
            child: const Text(
              "Next",
              style:
                  TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                  SizeConfig.screenWidth! * 1, SizeConfig.screenHeight! * 0.08),
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
