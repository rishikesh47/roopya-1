import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:roopya_banking_app/enterdetails/userdetailsbottom.dart';
import 'package:sizer/sizer.dart';

import '../../strings_and_colors/colors.dart';
import '../../strings_and_colors/constants.dart';
import '../../utils/size_config.dart';




class UserDetailsContent extends StatefulWidget {
   UserDetailsContent({Key? key}) : super(key: key);

  @override
  _UserDetailsContentState createState() => _UserDetailsContentState();
}

class _UserDetailsContentState extends State<UserDetailsContent> {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController panCtr = TextEditingController();
  TextEditingController date  = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  late DateTime _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
                 child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                    SizedBox(
                      height: 25,
                    ),
                      Text(
                      Constants.address,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: SizeConfig.screenHeight!*0.045,
                            color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Constants.enteryourdetailssub,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff8F8F8F),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),),
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
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                hintText: "Enter your name",
                hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Raleway', fontSize: 13.0,)
            ),


              ),


                    SizedBox(
                      height: SizeConfig.screenHeight!/35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     TextFormField(
                        validator: (value) {
                          return (value == null || value.isEmpty)
                              ? 'Enter number'
                              : null;
                        },
                        controller: panCtr,
                       decoration: InputDecoration(
                           contentPadding:
                           const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(5),
                               borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(5),
                               borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                           errorBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(5),
                               borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                           hintText: "Enter your PAN no",
                           hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Raleway', fontSize: 13.0,)
                       ),


                      ),

                    SizedBox(
                      height: SizeConfig.screenHeight!/35,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight!/40,
                    ),
                    Container(
                      width: SizeConfig.screenWidth!/1.5,
                      child : Wrap(
                        spacing: SizeConfig.screenWidth!/25,
                        children: [
                          Container(
                            width: SizeConfig.screenWidth!/7,
                              child: TextFormField(
                                validator: (value) {
                                  return (value == null || value.isEmpty)
                                      ? ''
                                      : null;
                                },
                                controller: date,
                                decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                    hintText: "D/D",
                                    hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Raleway', fontSize: 13.0,)
                                ),


                            ),

                          ),
                          Container(
                            width: SizeConfig.screenWidth!/7,
                            child: TextFormField(
                              validator: (value) {
                                return (value == null || value.isEmpty)
                                    ? 'Month'
                                    : null;
                              },
                              controller: year,
                              decoration: InputDecoration(
                                  contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(color: Color(0xffA9ABAD))),
                                  hintText: "Year",
                                  hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Raleway', fontSize: 13.0,)
                              ),


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

]
      ),

      )   );
  }
}
