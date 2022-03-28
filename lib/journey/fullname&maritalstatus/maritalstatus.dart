import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:roopya_banking_app/journey/dateofbirth/dateofbirthb.dart';
import 'package:roopya_banking_app/journey/fullname&maritalstatus/bankmodel.dart';
import 'package:roopya_banking_app/journey/fullname&maritalstatus/footerloan.dart';
import 'package:roopya_banking_app/journey/genderselect/genderselectbottom.dart';
import 'package:roopya_banking_app/loancalculate/footerloan.dart';

import 'package:roopya_banking_app/reusable_widgets/header_widget.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';
import '../../utils/size_config.dart';
import '../../verifymobile/verification.dart';
import 'package:fl_chart/fl_chart.dart';

class marital extends StatefulWidget {
  const marital({Key? key}) : super(key: key);

  @override
  State<marital> createState() => _maritalState();
}

class _maritalState extends State<marital> {
  static const IconData male = IconData(0xe3c5, fontFamily: 'MaterialIcons');
  static const IconData female = IconData(0xe261, fontFamily: 'MaterialIcons');
  TextEditingController dateofbirth = TextEditingController();
  late FocusNode myFocusNode;
  bool hidePassword = true;
  late BankListDataModel _bankChoose;

  List<BankListDataModel> bankDataList=[
    BankListDataModel("Select marital status",'https://thumbs.dreamstime.com/b/wedding-gold-rings-diamonds-line-black-icon-marital-status-isolated-vector-element-outline-pictogram-web-page-mobile-app-181172690.jpg'),
    BankListDataModel("Married","https://icon-library.com/images/married-couple-icon/married-couple-icon-27.jpg"),
    BankListDataModel("Single","https://image.shutterstock.com/image-vector/body-people-icon-sign-signifier-260nw-1390898816.jpg"),
    //BankListDataModel("Canara","https://bankforms.org/wp-content/uploads/2019/10/Canara-Bank.png")
  ];

  @override
  void initState() {
    super.initState();
    _bankChoose = bankDataList[0];
    // _myActivity = '';
    // _myActivityResult = '';
    myFocusNode = FocusNode();
  }
  void _onDropDownItemSelected(BankListDataModel newSelectedBank) {
    setState(() {
      _bankChoose = newSelectedBank;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body:Container(

                decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //         begin: Alignment.topRight,
                //         end: Alignment.bottomLeft,
                //         stops: [
                //           0.1,
                //           0.4,
                //           0.6,
                //           0.9,
                //         ],
                //         colors: [
                //           Color(0xff1C7BC0),
                //           Color(0xff51C0FF),
                //           Color(0xff51C0FF),
                //           Color(0xff51C0FF),
                //         ]
                //       // colors: [
                //       //   Color(0xff2596be),
                //       //   Color(0xff1791A6),
                //       //   Color(0xff259AAC),
                //       //   Color(0xff52B7C1),
                //       // ],
                //     )
                ),
                height: SizeConfig.screenHeight! * 0.69,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: HeaderSection(),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.08,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 22, top: 20 ),
                        child: Text(
                          Constants.maritalstatus,
                          style: TextStyle(
                              fontFamily: 'DMSans',
                              fontSize: 22.0,
                              color: Color(0xff2D3092), fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22,top: 2),
                        child: Text(
                          'Reference site about Lorem Ipsum',
                          style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,
                            fontFamily: 'DMSans',
                            fontSize: 16.0,),
                        ),
                      )
                    ],
                  ),
                ),
              ),

        ),
        Positioned(
          top: SizeConfig.screenHeight!*0.46,
          left: SizeConfig.screenWidth!*0.12,
          child:  Material(
            elevation: 4,
            child: Stack(
                children: [
                  Container(
                    width: SizeConfig.screenWidth!*0.76,
                    height: SizeConfig.screenHeight!*0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 3),
                      ],
                    ),
                    child: TextFormField(
                      // showCursor: false,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'DMSans',
                          color:  Colors.grey,
                          letterSpacing: 3,
                          wordSpacing: 10
                      ),
                      cursorColor: Color(0xff2D3092),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        MaskedInputFormatter(' ##-##-##')
                      ],
                      validator: (value) {
                        return (value == null || value.isEmpty)
                            ? 'Enter your number'
                            : null;
                      },
                      controller: dateofbirth,
                      /*  onChanged: (value) {
                               print(value);
                             },*/
                      obscureText: false, //show/hide password
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                            padding:  EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft:Radius.circular(3),bottomLeft: Radius.circular(3)),
                                  boxShadow: [
                                    BoxShadow(color: Color(0xffE3F2FD), spreadRadius: 3),
                                  ],
                                  color:Colors.blue[50],
                                ),
                                child: Icon(Icons.calendar_today_outlined,color:Color(0xFF031A6E),))
                        ),
                        // Color(0xFF031A6E)
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 12 ,),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white)),
                        // hintText: "Enter your number",
                        // hintStyle: const TextStyle(color: Colors.black)
                        // prefixIcon: const Icon(Icons.lock),
                        // suffixIcon: IconButton(
                        //   icon: hidePassword
                        //       ? const Icon(Icons.visibility_off)
                        //       : const Icon(Icons.visibility),
                        //   onPressed: () {
                        //     setState(() {
                        //       hidePassword = !hidePassword;
                        //     });
                        //   },
                        // ),
                      ),
                      // validator: (value) {
                      //   return (value == null || value.isEmpty)
                      //       ? 'Please Enter Password'
                      //       : null;
                      // },
                      // controller: passwordCtr,
                      // decoration: inputDecoration('Password', Icons.lock),
                    ),
                  ),

                ]
            ),
          ), //Icon
        ),
        Positioned(
          top: SizeConfig.screenHeight!*0.58,
          left: SizeConfig.screenWidth!*0.12,
          child: Container(
            width: SizeConfig.screenWidth!*0.76,
            height: SizeConfig.screenHeight!*0.07,
            child: Form(
              child: Center(
                child: Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 0, top: 0, right: 0),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.fromLTRB(0, 0, 4, 0),
                            // labelText: "hi",
                            // labelText: _dropdownValue == null
                            //     ? 'Where are you from'
                            //     : 'From',
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white )),
                            errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white)),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color:  Colors.white))
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton<BankListDataModel>(
                              elevation: 0,
                              iconDisabledColor: Colors.blue,
                              icon: Icon(Icons.arrow_downward_outlined,color: Colors.blue,),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "verdana_regular",
                              ),
                              hint: Text(
                                "Select Bank",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontFamily: "verdana_regular",
                                ),
                              ),
                              items: bankDataList
                                  .map<DropdownMenuItem<BankListDataModel>>(
                                      (BankListDataModel value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          new CircleAvatar(
                                            backgroundImage: new NetworkImage(
                                                value.bank_logo),
                                          ),
                                          // Icon(valueItem.bank_logo),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(value.bank_name),
                                        ],
                                      ),
                                    );
                                  }).toList(),

                              isExpanded: true,
                              isDense: true,
                              onChanged: (BankListDataModel? newSelectedBank) {
                                _onDropDownItemSelected(newSelectedBank!);
                              },
                              value: _bankChoose,

                            ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: maritalstatusbottom(), //Icon
        ),
      ]),
    );
  }


}
