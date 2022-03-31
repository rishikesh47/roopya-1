import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';

class TitleSubtitleReusable extends StatefulWidget {
  @override
  _TitleSubtitleReusableState createState() => _TitleSubtitleReusableState();
  final String titleText;
  final String subTitleText;

  const TitleSubtitleReusable(
      {Key? key, required this.titleText, required this.subTitleText})
      : super(key: key);
}

class _TitleSubtitleReusableState extends State<TitleSubtitleReusable> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.screenHeight! * 0.050,
              right: SizeConfig.screenHeight! * 0.050),
          child: Text(
            widget.titleText,
            style: TextStyle(
              fontSize: SizeConfig.screenHeight! * 0.035,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway',
              color: GlobalColors.apptheme,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.screenHeight! * 0.05),
          child: Text(
            widget.subTitleText,
            // Constants.userworkEmployeeSubStatus,
            style: TextStyle(
              fontSize: SizeConfig.screenHeight! * 0.020,
              fontWeight: FontWeight.w500,
              fontFamily: 'Raleway',
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ));
  }
}
