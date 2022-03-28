import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/strings_and_colors/colors.dart';

class ReusableTextFormBtn extends StatefulWidget {
  // final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final String defaultText;
  // final FocusNode focusNode;
  // final bool obscureText;
  final TextEditingController controller;
  final Function functionValidate;
  final String parametersValidate;
  // final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final bool  obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  // final Function onFieldTap;

   ReusableTextFormBtn(
      {Key? key, required this.hintText,
      // required this.focusNode,
      // required this.textInputType,
      required this.defaultText,
      // this.obscureText = false,
      required this.controller,
      required this.functionValidate,
      required this.parametersValidate,
      // this.actionKeyboard = TextInputAction.next,
      required this.onSubmitField,
      // required this.onFieldTap,
      required this.prefixIcon,  required this.obscureText,
        required this.keyboardType,
        required this.textInputAction,
        required this.focusNode,
      }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class ReusableTextFormBtnState extends State<ReusableTextFormBtn> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // primaryColor: primaryColor,
          ),
      child: TextFormField(
        cursorColor:Colors.blue ,
        obscureText : widget.obscureText,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        focusNode: widget.focusNode,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        initialValue: widget.defaultText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.appThemeColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.appThemeColor),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.appThemeColor),
          ),
        ),
        controller: widget.controller,
        validator: (value) {
          if (widget.functionValidate != null) {
            String resultValidate =
                widget.functionValidate(value, widget.parametersValidate);
            if (resultValidate != null) {
              return resultValidate;
            }
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitField != null) widget.onSubmitField();
        },
        onTap: () {
          // if (widget.onFieldTap != null) widget.onFieldTap();
        },
      ),
    );
  }
}

String? commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String? requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
