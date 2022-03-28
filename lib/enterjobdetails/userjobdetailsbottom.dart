import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roopya_banking_app/enterjobdetails/loadingscreen.dart';
import 'package:roopya_banking_app/utils/size_config.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';



class userjobBottomContent extends StatefulWidget {

  final PanelController _pc;
  userjobBottomContent(this._pc);

  @override
  _userjobBottomContentState createState() => _userjobBottomContentState(_pc);
}

class _userjobBottomContentState extends State<userjobBottomContent> {

  final PanelController _pc;
  _userjobBottomContentState(this._pc);




  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return SizedBox(
        child: Container(
          child: Column(

            children: [
              ElevatedButton(
                  onPressed: () {
                    _pc.open();
                    // Get.to(FirstPolicy()),
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(builder: (context) => loadingscreen()),
                    // );

                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size(SizeConfig.screenWidth!*1, 50),
                      primary: Colors.lightBlue,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                ),
            ],
          ),
        )
    );
  }
}
