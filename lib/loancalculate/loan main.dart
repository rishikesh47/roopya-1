import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roopya_banking_app/loancalculate/footerloan.dart';
import 'package:roopya_banking_app/reusable_widgets/header_widget.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


import '../strings_and_colors/colors.dart';
import '../strings_and_colors/constants.dart';
import '../utils/size_config.dart';
import '../verifymobile/verification.dart';
import 'package:fl_chart/fl_chart.dart';

class loancalculate extends StatefulWidget {
  const loancalculate({Key? key}) : super(key: key);

  @override
  State<loancalculate> createState() => _loancalculateState();
}

class _loancalculateState extends State<loancalculate> {
  double _currentSlider1Value = 20000.0;
  double _currentSlider2Value = 50;
  double _currentSlider3Value = 10.0;
  double _starValue = 10;
  double _endValue = 80;
  double minValue = 0.0;
  double maxValue = 100.0;
  double minValue2 = 0.0;
  double maxValue2 = 100.0;
  // double minValue3= 0.0;
  // double maxValue3 = 10.0;
  var startController = TextEditingController();
  final endController = TextEditingController();
  final endController2 = TextEditingController();
  final endController3 = TextEditingController();
  final endController4 = TextEditingController();
  final controller = TextEditingController();
  late double N1;
  late double N2;
  late double D1;
  late double D2;
  double firstvalue = 10000;
  double _valueinterest = 20.0;
  double _valueprincipal = 20000.0;
  double _valueyears = 2.0;

  double interest = 20.0;
  double principal = 20000.0;
  double years = 2.0;
  double amount = 22149.6;
  int touchedIndex = -1;
  double Monthly_EMI  = 1017.89;
  String MonthlyEMI =  1017.89.toString() ;
   double graphdata = 80;
  double interestpayble  = 2149.0;

  void calculate() {
      N2 = principal *
          interest /
          12 /
          100 *
          (pow((1 + interest / 12 / 100), years * 12));
      print(principal);
      print(N2);
      D2 = double.parse(
          (pow((1 + interest / 12 / 100), ((years * 12))) - 1).toString());
      print(D2);
      setState(() {
        Monthly_EMI = (N2)/ (D2);
        MonthlyEMI = Monthly_EMI.toStringAsFixed(0);
        amount = Monthly_EMI * years * 12;
        interestpayble = amount-principal;
        graphdata = principal/(interestpayble+principal)*100;
      });
      // graphdata = (Monthly_EMI / principal * 100.toDouble());
      // print(graphdata);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body:Container(
                  // color: Colors.white,
                  // decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //         begin: Alignment.topRight,
                  //         end: Alignment.bottomLeft,
                  //         stops: [
                  //       0.1,
                  //       0.4,
                  //       0.6,
                  //       0.9,
                  //     ],
                  //         colors: [
                  //       Color(0xff1C7BC0),
                  //       Color(0xff51C0FF),
                  //       Color(0xff51C0FF),
                  //       Color(0xff51C0FF),
                  //     ]
                  //         // colors: [
                  //         //   Color(0xff2596be),
                  //         //   Color(0xff1791A6),
                  //         //   Color(0xff259AAC),
                  //         //   Color(0xff52B7C1),
                  //         // ],
                  //         )),
                  height: SizeConfig.screenHeight! * 0.69,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: HeaderSection(),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.004,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 18,right: 18),
                          child: Container(
                            height: SizeConfig.screenHeight! * 0.30,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(4.0),
                              gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        stops: [
                                      0.1,
                                      0.4,
                                      0.6,
                                      0.9,
                                    ],
                                        colors: [
                                      Color(0xff1C7BC0),
                                      Color(0xff51C0FF),
                                      Color(0xff51C0FF),
                                      Color(0xff51C0FF),
                                    ]
                                        // colors: [
                                        //   Color(0xff2596be),
                                        //   Color(0xff1791A6),
                                        //   Color(0xff259AAC),
                                        //   Color(0xff52B7C1),
                                        // ],
                            ),
                            ),
                            child: Column(children: [
                              Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 17 , top: 18 ,bottom :10),
                                  child: Text(
                                    '  Loan Amount',
                                    style: TextStyle(
                                      color: Color(0xff031A6E),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 22 , top: 18 ,bottom: 9),
                                  child: Container(
                                    width: SizeConfig.screenWidth! * 0.18,
                                    height: SizeConfig.screenHeight! * 0.04,
                                    decoration: BoxDecoration(
                                        color: Color(0xff031A6E),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child:
                                      // TextField(
                                      //   onChanged: (String value) {
                                      //     if (double.parse(value)>=10000) {
                                      //       calculate();
                                      //     }
                                      //   },
                                      //   controller: startController,
                                      //   keyboardType: TextInputType.number,
                                      //     decoration: InputDecoration(
                                      //       prefixText: "\u{20B9}",
                                      //       prefixStyle: TextStyle(
                                      //         color: Colors.white,
                                      //         fontWeight: FontWeight.bold,
                                      //         fontSize: 15,
                                      //     ),
                                      //     ),
                                      //     style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 15,
                                      //     ),
                                      //   ),
                                      Text(
                                        '\u{20B9} ${principal.toStringAsFixed(0)}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Container(
                                //   width:SizeConfig.screenWidth!*0.2,
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(1.0),
                                //     child: TextField(
                                //       decoration: InputDecoration(
                                //           border: InputBorder.none, hintText: 'LOAN'),
                                //       controller: endController,
                                //     ),
                                //   ),
                                // ),
                              ]),
                              Container(
                                  height: SizeConfig.screenHeight! * 0.01,
                                  child: SfSliderTheme(
                                    data: SfSliderThemeData(
                                        thumbColor: Colors.blue[200],
                                        thumbStrokeColor: Colors.blue[100],
                                        thumbStrokeWidth: 4,
                                        thumbRadius: 8),
                                    child: SfSlider(
                                      min: 10000,
                                      max: 100000,
                                      inactiveColor: Colors.grey[400],
                                      activeColor: Colors.blue,
                                      enableTooltip: true,
                                      interval: 1000,
                                      value: _valueprincipal,
                                      onChanged: (dynamic newValue) {
                                        setState(() {
                                          _valueprincipal = newValue;
                                          startController.text=_valueprincipal.toString();
                                          principal = _valueprincipal;
                                          calculate();
                                        });
                                      },
                                    ),
                                  )),
                              // Container(
                              //   height: SizeConfig.screenHeight! * 0.01,
                              //   child: SliderTheme(
                              //     data: SliderThemeData(
                              //       activeTrackColor: Colors.blue[200],
                              //       inactiveTrackColor: Colors.grey[400],
                              //       thumbColor: Colors.blue,
                              //       thumbShape: RoundSliderThumbShape(
                              //           enabledThumbRadius: 6),
                              //       activeTickMarkColor: Colors.transparent,
                              //       inactiveTickMarkColor: Colors.transparent,
                              //       // showValueIndicator: ShowValueIndicator.always,
                              //       showValueIndicator: ShowValueIndicator.never,
                              //       // valueIndicatorTextStyle: TextStyles.sliderTooltipText,
                              //       // overlayShape: SliderComponentShape.noOverlay,
                              //       // overlayColor: Colors.white
                              //     ),
                              //     child: Slider(
                              //       activeColor: Colors.blueAccent,
                              //       value: _currentSlider1Value,
                              //       min: 10000,
                              //       max: 100000.0,
                              //       divisions: 100,
                              //       label:
                              //           _currentSlider1Value.round().toString(),
                              //       onChanged: (double value) {
                              //         setState(() {
                              //           _currentSlider1Value = value;
                              //           // endController.text =
                              //           //     value.roundToDouble().toString();
                              //           principal = value;
                              //           // calculate();
                              //         });
                              //       },
                              //     ),
                              //   ),
                              // ),
                              Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 17 , top: 18 ,bottom :10),
                                  child: Text(
                                    '  Rate Of Interest',
                                    style: TextStyle(
                                      color: Color(0xff031A6E),
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 22 , top: 18 ,bottom: 9),
                                  child: Container(
                                    width: SizeConfig.screenWidth! * 0.18,
                                    height: SizeConfig.screenHeight! * 0.04,
                                    decoration: BoxDecoration(
                                        color: Color(0xff031A6E),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text(
                                        '${interest.toStringAsFixed(0)}%',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              Container(
                                  height: SizeConfig.screenHeight! * 0.01,
                                  child: SfSliderTheme(
                                    data: SfSliderThemeData(
                                        thumbColor: Colors.blue[200],
                                        thumbStrokeColor: Colors.blue[100],
                                        thumbStrokeWidth: 4,
                                        thumbRadius: 8),
                                    child: SfSlider(
                                      min: 10.0,
                                      max: 100.0,
                                      inactiveColor: Colors.grey[400],
                                      activeColor: Colors.blue,
                                      enableTooltip: true,
                                      value: _valueinterest,
                                      onChanged: (dynamic newValue) {
                                        setState(() {
                                          _valueinterest = newValue;
                                          interest = _valueinterest;
                                          calculate();
                                        });
                                      },
                                    ),
                                  )),
                              // SliderTheme(
                              //   data: SliderThemeData(
                              //     activeTrackColor: Colors.blue[200],
                              //     inactiveTrackColor: Colors.grey[400],
                              //     thumbColor: Colors.blue,
                              //     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                              //     activeTickMarkColor: Colors.transparent,
                              //     inactiveTickMarkColor: Colors.transparent,
                              //     showValueIndicator: ShowValueIndicator.never,
                              //     // valueIndicatorTextStyle: TextStyles.sliderTooltipText,
                              //     // overlayShape: SliderComponentShape.noOverlay,
                              //     // overlayColor: Colors.white
                              //   ),
                              //   child: Slider(
                              //     activeColor: Colors.blueAccent,
                              //     value: _currentSlider2Value,
                              //     min : 10,
                              //     max: 100,
                              //     divisions: 100,
                              //     label: _currentSlider2Value.round().toString(),
                              //     onChanged: (double value) {
                              //       setState(() {
                              //         _currentSlider2Value = value;
                              //         endController2.text =
                              //             value.roundToDouble().toString();
                              //         interest = value;
                              //         calculate();
                              //       });
                              //     },
                              //   ),
                              // ),
                              Row(children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 17 , top: 18 ,bottom :10),
                                  child: Text(
                                    '  Loan Tenure',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      color: Color(0xff031A6E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 22 , top: 18 ,bottom: 9),
                                  child: Container(
                                    width: SizeConfig.screenWidth! * 0.18,
                                    height: SizeConfig.screenHeight! * 0.04,
                                    decoration: BoxDecoration(
                                        color: Color(0xff031A6E),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text(
                                        '${years.toStringAsFixed(0)}y',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              Container(
                                height: SizeConfig.screenHeight! * 0.01,
                                child: Container(
                                    height: SizeConfig.screenHeight! * 0.01,
                                    child: SfSliderTheme(
                                      data: SfSliderThemeData(
                                          thumbColor: Colors.blue[200],
                                          thumbStrokeColor: Colors.blue[100],
                                          thumbStrokeWidth: 4,
                                          thumbRadius: 8),
                                      child: SfSlider(
                                        min: 1,
                                        max: 20,
                                        inactiveColor: Colors.grey[400],
                                        activeColor: Colors.blue,
                                        enableTooltip: true,
                                        interval: 1,
                                        value: _valueyears,
                                        onChanged: (dynamic newValue) {
                                          setState(() {
                                            _valueyears = newValue;
                                            years = _valueyears;
                                            calculate();
                                          });
                                        },
                                      ),
                                    )),
                                //   SfSlider(
                                //
                                //     min: 0.0,
                                //     activeColor: Colors.blue[],
                                //     inactiveColor: Colors.grey[400],
                                //     max: 100.0,
                                //     value: _value,
                                //     interval: 20,
                                //     enableTooltip: true,
                                //     minorTicksPerInterval: 1,
                                //     onChanged: (dynamic value){
                                //       setState(() {
                                //         _value = value;
                                //         endController3.text = value.roundToDouble().toString();
                                //         years = value;
                                //         calculate();
                                //       });
                                //     },
                                //   ),
                                // ),
                                //       SliderTheme(
                                //     data: SliderThemeData(
                                //       activeTrackColor: Colors.blue[200],
                                //       inactiveTrackColor: Colors.grey[400],
                                //       thumbColor: Colors.blue,
                                //       thumbShape: RoundSliderThumbShape(
                                //           enabledThumbRadius: 6),
                                //       activeTickMarkColor: Colors.transparent,
                                //       inactiveTickMarkColor: Colors.transparent,
                                //       showValueIndicator: ShowValueIndicator.never,
                                //       // valueIndicatorTextStyle: TextStyles.sliderTooltipText,
                                //       // overlayShape: SliderComponentShape.noOverlay,
                                //       // overlayColor: Colors.white
                                //     ),
                                //     child: Slider(
                                //       activeColor: Colors.blueAccent,
                                //       value: _currentSlider3Value,
                                //       min: 1.0,
                                //       max: 21.0,
                                //       divisions: 100,
                                //       label:
                                //           _currentSlider3Value.round().toString(),
                                //       onChanged: (double value) {
                                //         setState(() {
                                //           _currentSlider3Value = value;
                                //           endController3.text =
                                //               value.roundToDouble().toString();
                                //           years = value;
                                //           calculate();
                                //         });
                                //       },
                                //     ),
                                //   ),
                                // ),
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
        ),
        Positioned(
          top: SizeConfig.screenHeight! * 0.54,
          child: Container(
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: SizeConfig.screenHeight! / 23,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Text(
                        'Total Amount:',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: GlobalColors.appThemeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.01,
                      ),
                      Container(
                        width: SizeConfig.screenWidth! * 0.20,
                        height: SizeConfig.screenHeight! * 0.04,
                        decoration: BoxDecoration(boxShadow: [

                          BoxShadow(
                              color: Color(0xff118CFE).withOpacity(0.47),
                            spreadRadius: 0.0,
                            blurRadius: 0.0,
                            offset: Offset(0,0)
                          ),

                        ],
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.05, 0.4,0.8, 1],
                          colors: [
                            Colors.black.withOpacity(0.25),
                            Color(0xff118CFE).withOpacity(0.05),
                            Color(0xff118CFE).withOpacity(0.1),
                            Color(0xffFFFFFF).withOpacity(0.1),
                          ],
                        ),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            amount.toStringAsFixed(2),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! / 24,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Text(
                        'Loan EMI:',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: GlobalColors.appThemeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.01,
                      ),
                      Container(
                        width: SizeConfig.screenWidth! * 0.20,
                        height: SizeConfig.screenHeight! * 0.04,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color(0xff118CFE).withOpacity(0.47),
                            spreadRadius: 0.0,
                            blurRadius: 0.0,
                          ),
                        ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.05, 0.4,0.8, 1],
                              colors: [
                                Colors.black.withOpacity(0.25),
                                Color(0xff118CFE).withOpacity(0.05),
                                Color(0xff118CFE).withOpacity(0.1),
                                Color(0xffFFFFFF).withOpacity(0.1),
                              ],
                            ),

                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            Monthly_EMI.toStringAsFixed(2),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! / 24,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Text(
                        'Interest: ',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: GlobalColors.appThemeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.01,
                      ),
                      Container(
                        width: SizeConfig.screenWidth! * 0.20,
                        height: SizeConfig.screenHeight! * 0.04,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color(0xff118CFE).withOpacity(0.47),
                            spreadRadius: 0.0,
                            blurRadius: 0.0,
                          ),
                        ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.05, 0.4,0.8, 1],
                              colors: [
                                Colors.black.withOpacity(0.25),
                                Color(0xff118CFE).withOpacity(0.05),
                                Color(0xff118CFE).withOpacity(0.1),
                                Color(0xffFFFFFF).withOpacity(0.1),
                              ],
                            ),borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            interestpayble.toStringAsFixed(2),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: footerloan(), //Icon
        ),
        Positioned(
            bottom: SizeConfig.screenHeight! * 0.18,
            right: 6.0,
            child: Container(
              height: SizeConfig.screenHeight! * 0.25,
              color: Colors.transparent,
              width: SizeConfig.screenWidth! * 0.5,
              child: Container(
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(
                          touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          touchedIndex = 1;
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = 1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      }),
                      startDegreeOffset: 0,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 3,
                      centerSpaceRadius: 1,
                      sections: showingSections()),
                ),
              ),
            ))
      ]),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 87.0 : 82.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
              color: Color(0xff51C0FF),
              value: (graphdata),
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.transparent,
              ));
        case 1:
          return PieChartSectionData(
            borderSide: BorderSide(color: Color(0xff031A6E),width: 4,style: BorderStyle.solid),
              color: Color(0xff031A6E),
              value: (100-graphdata),
              title: '${(100-graphdata).toStringAsFixed(1)}\%',
              radius: 87,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ));
        default:
          throw Error();
      }
    });
  }
}
