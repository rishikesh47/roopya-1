import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/reusable_widgets/header_widget.dart';
import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';
import 'footer_residence.dart';

class ResidenceScreen extends StatefulWidget {
  @override
  _ResidenceScreenState createState() => _ResidenceScreenState();
}

class _ResidenceScreenState extends State<ResidenceScreen> {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController panCtr = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: ListView(
            children: [
              HeaderSection(),
              Container(
                padding: EdgeInsets.all(18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        Constants.currentResidence,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: SizeConfig.screenHeight! * 0.024,
                            color: GlobalColors.apptheme,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Constants.verifyMobileSubText,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xff8F8F8F),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        validator: (value) {
                          return (value == null || value.isEmpty)
                              ? 'Enter your name'
                              : null;
                        },
                        controller: nameCtr,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffA9ABAD))),
                            hintText: "Select residence type",
                            hintStyle: const TextStyle(
                              color: Color(0xff8F8F8F),
                              fontFamily: 'Raleway',
                              fontSize: 13.0,
                            )),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! / 35,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! / 40,
                      ),
                      Container(
                        // width: SizeConfig.screenWidth! / 1.5,
                        child: Row(
                          // spacing: SizeConfig.screenWidth! / 25,
                          children: [
                            Container(
                              width: SizeConfig.screenWidth!*0.44,
                              child: TextFormField(
                                validator: (value) {
                                  return (value == null || value.isEmpty)
                                      ? 'Month'
                                      : null;
                                },
                                controller: date,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    hintText: "Date",
                                    hintStyle: const TextStyle(
                                      color: Color(0xff8F8F8F),
                                      fontFamily: 'Raleway',
                                      fontSize: 13.0,
                                    )),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: SizeConfig.screenWidth! *0.44,
                              child: TextFormField(
                                validator: (value) {
                                  return (value == null || value.isEmpty)
                                      ? 'Year'
                                      : null;
                                },
                                controller: month,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Color(0xffA9ABAD))),
                                    hintText: "Month",
                                    hintStyle: const TextStyle(
                                      color: Color(0xff8F8F8F),
                                      fontFamily: 'Raleway',
                                      fontSize: 13.0,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        // child: DatePickerWidget(
                        //   looping: true, // default is not looping
                        //   firstDate: DateTime(1990, 01, 01),
                        //   lastDate: DateTime(2030, 1, 1),
                        //   initialDate: DateTime(1991, 10, 12),
                        //   dateFormat: "dd-MMM-yyyy",
                        //   locale: DatePicker.localeFromString('en'),
                        //   onChange: (DateTime newDate, _) => _selectedDate = newDate,
                        //   pickerTheme: DateTimePickerTheme(
                        //     itemTextStyle: TextStyle(color: Colors.blue, fontSize: 19),
                        //     dividerColor: Colors.blue,
                        //   ),
                        // ),
                      ),
                      // TextFormField(
                      //   validator: (value) {
                      //     return (value == null || value.isEmpty)
                      //         ? 'Enter your DOB'
                      //         : null;
                      //   },
                      //   controller: panCtr,
                      //   decoration: InputDecoration(
                      //       contentPadding:
                      //       const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      //       enabledBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: const BorderSide(color: Colors.blue)),
                      //       focusedBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(5),
                      //           borderSide: const BorderSide(color: Colors.black)),
                      //       errorBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(5),
                      //           borderSide: const BorderSide(color: Colors.deepOrange)),
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: const BorderSide(color: Colors.blue)),
                      //       hintText: "Enter Your Date of Birth",
                      //       hintStyle: const TextStyle(color: Colors.black)
                      //   ),
                      //
                      //
                      // ),
                    ]),
              ),
            ],
          ),
        ),
        Positioned(bottom: 0, child: FooterResidence())
      ],
    );
  }
}
