import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileReusable extends StatefulWidget {
  // @override
  _ListTileReusableState createState() => _ListTileReusableState();
  final String titleText;
  // final String subTitleText;
  final Icon prefixImg;
  // final String hintText;
  // final String subText;
  final  textField;

  ListTileReusable({
    Key? key,
    required this.titleText,
    // required this.subTitleText,
    required this.prefixImg,
    // required this.hintText,
    // required this.subText,
    required this.textField,
  }) : super(key: key);

// @override
// // ignore: no_logic_in_create_state
// State<StatefulWidget> createState() {
//   // TODO: implement createState
//   throw UnimplementedError();
// }
}

class _ListTileReusableState extends State<ListTileReusable> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: widget.prefixImg,
        title: Text(
          widget.titleText,style:TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Raleway')
        ),
        // trailing: Icon(Icons.done),
        subtitle:widget.textField,


        // Text(widget.subTitleText),
        // selected: true,
        onTap: () {
          setState(() {
            // txt='List Tile pressed';
          });
        },
      ),
    );
  }
}
