import 'package:flutter/material.dart';
import 'package:roopya_banking_app/loading%20screens/workdetailloading/workloadingbody.dart';



// import 'package:home_fi/app/theme/text_theme.dart';
// import 'package:lottie/lottie.dart';
class workdetailView extends StatefulWidget {
  const workdetailView({Key? key}) : super(key: key);

  @override
  _workdetailViewState createState() => _workdetailViewState();
}

class _workdetailViewState extends State<workdetailView> {
  @override
  Widget build(BuildContext context) {


    return SafeArea(


      child: workBody(),
    );
  }
}
