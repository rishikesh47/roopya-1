import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/journey/personal_loan/header_screen.dart';
import '../../reusable_widgets/ListTileReusableWidget.dart';
import '../../reusable_widgets/header_widget.dart';
import '../../strings_and_colors/constants.dart';
import 'footer_screen.dart';

class PersonalLoanScreen extends StatefulWidget {
  @override
  _PersonalLoanScreenState createState() => _PersonalLoanScreenState();
}

class _PersonalLoanScreenState extends State<PersonalLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderSection(),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(Constants.personalLoanTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                const SizedBox(height: 20),
                ListTileReusable(
                  titleText: "SMS",
                  prefixImg: Icon(Icons.sms),
                  textField: const Text(Constants.personalLoanSMS),
                ),
                ListTileReusable(
                  titleText: "Contacts",
                  prefixImg: Icon(Icons.contact_phone),
                  textField: const Text(Constants.personalLoanContacts),
                ),
                ListTileReusable(
                  titleText: "Location",
                  prefixImg: Icon(Icons.location_on),
                  textField: const Text(Constants.personalLoanContacts),
                ),
                ListTileReusable(
                  titleText: "Device",
                  prefixImg: Icon(Icons.devices),
                  textField: const Text(Constants.personalLoanDevice),
                ),
                Expanded(child: Container()),
                FooterScreen()
              ],
            ),
      ),
    );
  }
}
