

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterdetails/user_details_content.dart';
import 'package:roopya_banking_app/enterdetails/userdetailsbottom.dart';
import 'package:roopya_banking_app/utils/size_config.dart';

import '../reusable_widgets/header_widget.dart';

class UserDetails extends StatefulWidget {

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Container(
                  height: SizeConfig.screenHeight!*1,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                             SizedBox(
                               height: 10,
                             ),
                             HeaderSection(),
                             UserDetailsContent(),
                            // Expanded(
                            //   child: Container(
                            //   ),
                            // ),
                            Spacer(),
                            userBottomContent()
                          ],
                        ),
                ),
              ),
            ),
            // Positioned(bottom: 10,
            //     child: userBottomContent())
    ]
        ),





    );
  }
}
