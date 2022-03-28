
import 'package:lottie/lottie.dart';
import 'package:roopya_banking_app/RECHARGE/recharge.dart';
import 'package:roopya_banking_app/onboarding/model.dart';
import 'package:flutter/material.dart';
// import 'package:roopya_banking_app/ui/home/home.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'package:roopya_banking_app/onboarding/util.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:roopya_banking_app/verifymobile/verification.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      image: 'assets/onb1.jpg',
      text: "Easy, Fast & Trusted",
      desc:
      "Fast money transfer and guaranteed safe transactions with others",
      bg: Colors.blue,
      button: Colors.blue,
    ),
    OnboardModel(
      image: 'assets/onb2.png',
      text: "Saving Your Money",
      desc:
      "Track the progress of your savings and start a habit of saving with us",
      bg: Colors.blue,
      button: Colors.blue,
    ),
    OnboardModel(
      image: 'assets/onb3.jpg',
      text: "Free Transactions",
      desc:
      "Provides a quality of the financial system with free money transactions without any fees",
      bg: Colors.blue,
      button: Colors.blue,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    // print("Shared pref called");
    // int isViewed = 0;
    // // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('onBoard', isViewed);
    // print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: currentIndex % 2 == 0 ? Colors.white : Colors.white,
      appBar: AppBar(
        backgroundColor: currentIndex % 2 == 0 ?  Colors.white : Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              _storeOnboardInfo();
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => verification() ));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                color: kblack
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: const AlwaysScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(screens[index].image),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: kblack
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth!*0.7,
                    child: Text(
                      screens[index].desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                        color:  Colors.grey[700],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      print(index);
                      if (index == screens.length - 1) {
                        await _storeOnboardInfo();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => verification()));
                      }

                      _pageController.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.bounceIn,
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 10.0,
                          child: ListView.builder(
                            itemCount: screens.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 3.0),
                                      width: currentIndex == index ? 25 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: currentIndex == index
                                            ? Colors.blue
                                            : Colors.blue,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ]);
                            },
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                          decoration: BoxDecoration(
                              color:  kblue ,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [

                            Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: index % 2 == 0 ? kwhite : kwhite),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),

                            Icon(
                              Icons.arrow_forward_sharp,
                              color: index % 2 == 0 ? kwhite : kwhite,
                            )
                          ]),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}