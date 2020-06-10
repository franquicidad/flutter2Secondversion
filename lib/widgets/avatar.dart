import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/widgets/circle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children: <Widget>[
      Container(
        width: 100,
        alignment: Alignment.center,
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/man.svg", width: 120, height:120, alignment: Alignment.center ,
        ),

      ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      ),
      Positioned(
        right: 0.8,
        top: 10,
        child: Container(
          width: 20,
          height: 20,
          child: Icon(Icons.edit,size: 10,),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                blurRadius: 3,
                color: Colors.black38,
                offset: Offset(3,8)
              )
              ],
          ),
      ),
      ),

    ],
    );
  }

  }

