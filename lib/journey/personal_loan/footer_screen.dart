import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../RECHARGE/recharge.dart';
import '../../loancalculate/loan main.dart';
import '../../utils/size_config.dart';

class FooterScreen extends StatefulWidget {
  @override
  _FooterScreenState createState() => _FooterScreenState();
}

class _FooterScreenState extends State<FooterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight!*0.08,
      decoration: const BoxDecoration(
          color: Colors.blue
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Get.to(FirstPolicy()),
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const recharge()),
              // );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const loancalculate()),
              );
            },
            child: const Text(
              "Submit Application",
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
