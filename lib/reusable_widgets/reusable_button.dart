import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';

ButtonTheme ReusableRaisedButton(
    {required VoidCallback onClick,
    required String text,
             bool?  obscureText = false,
    required Color textColor,
    required Color color,
    required Color splashColor,
    required double borderRadius,
    required double minWidth,
    required double height,
    required Color borderSideColor,
    required TextStyle style,
      required BuildContext context,
    required Widget leadingIcon,
    // required Widget trailingIcon
    }) {
  ;
  return ButtonTheme(
    minWidth: minWidth,
    height: height,
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: GlobalColors.appThemeColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  side: BorderSide(color: borderSideColor)),
              textStyle: TextStyle(color: Colors.white)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            // This is must when you are using Row widget inside Raised Button
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // _buildLeadingIcon(leadingIcon),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2,
                ),
              ),
              // _buildTrailingIcon(trailingIcon),
            ],
          ),
          onPressed: () {
            return onClick();
          }),
    ),
  );
}

Widget _buildLeadingIcon(Widget leadingIcon) {
  if (leadingIcon != null) {
    return Row(
      children: <Widget>[leadingIcon, SizedBox(width: 10)],
    );
  }
  return Container();
}

Widget _buildTrailingIcon(Widget trailingIcon) {
  if (trailingIcon != null) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        trailingIcon,
      ],
    );
  }
  return Container();
}
