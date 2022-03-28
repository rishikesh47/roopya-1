import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterjobdetails/sliderbottom2.dart';
import 'package:roopya_banking_app/enterjobdetails/userjobdetails_content.dart';
import 'package:roopya_banking_app/enterjobdetails/userjobdetailsbottom.dart';
import 'package:roopya_banking_app/loading%20screens/workdetailloading/workload.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../reusable_widgets/header_widget.dart';

class UserjobDetails extends StatefulWidget {
  @override
  _UserjobDetailsState createState() => _UserjobDetailsState();
}

class _UserjobDetailsState extends State<UserjobDetails> {

  PanelController _pc = new PanelController();
  @override
  Widget build(BuildContext context) {
    return Stack(

      children :[
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Container(
              height: SizeConfig.screenHeight!*1,
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(
                            height: SizeConfig.screenHeight!*0.01,
                          ),
                           HeaderSection(),
                           UserjobDetailsContent(),
                           Expanded(
                            child: Container(
                            ),
                          ),
                           userjobBottomContent(_pc)
                        ],
                      ),


          ),




      ),
        ),
        SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),),
          backdropEnabled: true,
          backdropColor: Colors.transparent,
          minHeight: 0,
          maxHeight:SizeConfig.screenHeight!*0.68,
          controller: _pc,
          panel: Column(
            children: [
              workdetailView(),
              Expanded(child: Container()),
              sliderbottom2()
            ],
          ),
        ),
  ]
    );
  }
}
