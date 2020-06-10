import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/pages/chat_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget{
  final String barTitle;
  final Color barTitleColor;
  final Icon leftIcon,rightIcon;
  final Color iconColor;
  final bool isDotVisible;
  final VoidCallback onLeftClick, onRightClick;

  const MyAppBar({Key key,
    this.leftIcon,
    this.rightIcon,
    @required this.iconColor,
    this.onLeftClick,
    this.onRightClick,
    @required this.barTitle,
    this.barTitleColor=Colors.blue,
    @required this.isDotVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.transparent,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.all(15),
              child:leftIcon,
              onPressed: onLeftClick
              ),
          Text(barTitle,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: barTitleColor,letterSpacing: 1),
          ),
          CupertinoButton(
              padding: EdgeInsets.all(15),
              child:
              Stack(
                children: <Widget>[
                  rightIcon,

                  Positioned(
                    right: 0,
                    top: 0,
                    child:
                    Container(

    width: 10,
    height: 10,

    decoration: BoxDecoration(
    color: Colors.red,
    shape: BoxShape.circle

    ),


                    ),
                  ),
                ],

              ),
              onPressed: onRightClick,
          ),

        ]
      ),
    );
  }

}