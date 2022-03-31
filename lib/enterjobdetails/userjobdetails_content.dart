import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';
import 'bankmodel.dart';


class UserjobDetailsContent extends StatefulWidget {
   UserjobDetailsContent({Key? key}) : super(key: key);

  @override
  _UserjobDetailsContentState createState() => _UserjobDetailsContentState();
}

class _UserjobDetailsContentState extends State<UserjobDetailsContent> {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController panCtr = TextEditingController();
  late DateTime _selectedDate;
  late BankListDataModel _bankChoose;

  List<BankListDataModel> bankDataList=[
    BankListDataModel("GOVERNMENT","1"),
    BankListDataModel("PRIVATE","2"),
    BankListDataModel("SELF EMPLOYED","3"),
    //BankListDataModel("Canara","https://bankforms.org/wp-content/uploads/2019/10/Canara-Bank.png")
  ];

  @override
  void initState() {
    super.initState();
    _bankChoose = bankDataList[0];
    // _myActivity = '';
    // _myActivityResult = '';
  }

  void _onDropDownItemSelected(BankListDataModel newSelectedBank) {
    setState(() {
      _bankChoose = newSelectedBank;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(SizeConfig.screenWidth!*0.05),
      child: Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  SizedBox(
                    height: SizeConfig.screenHeight!*0.04,
                  ),
                    Text(
                    Constants.userjobDetailTitle,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22.0,
                          color: GlobalColors.apptheme, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: SizeConfig.screenHeight!*0.1,
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
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                hintText: "Enter your name",
                hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Roboto', fontSize: 13.0)
            ),


              ),

                  SizedBox(
                    height: SizeConfig.screenHeight!*0.05,
                  ),

                  TextFormField(
                    validator: (value) {
                      return (value == null || value.isEmpty)
                          ? 'Enter your job position'
                          : null;
                    },
                    controller: panCtr,
                    decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                        hintText: "Enter your job position",
                        hintStyle: const TextStyle(color: Color(0xff8F8F8F),  fontFamily: 'Roboto',fontSize: 13.0)
                    ),


                  ),

                  SizedBox(
                    height: SizeConfig.screenHeight!*0.05,
                  ),

                  Form(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 0, right: 2),
                        child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.fromLTRB(12, 2, 20, 3),
                                  // labelText: "hi",
                                  // labelText: _dropdownValue == null
                                  //     ? 'Where are you from'
                                  //     : 'From',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color:  Color(0xffA9ABAD))),),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<BankListDataModel>(

                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                  ),
                                  hint: Text(
                                    "Select Bank",
                                    style: TextStyle(
                                      color: Colors.grey,
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
                                              Text(value.bank_logo, style: TextStyle(color: Colors.lightBlue)),
                                              // Icon(valueItem.bank_logo),
                                              SizedBox(
                                                width:SizeConfig.screenHeight!*0.02,
                                              ),
                                              Text(value.bank_name,style: TextStyle(color: Colors.lightBlue)),
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
