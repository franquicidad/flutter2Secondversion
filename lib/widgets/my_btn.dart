import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color btnBackgroundColor,textColor;

  const MyBtn({Key key,@required this.label, this.onPressed, this.btnBackgroundColor, this.textColor}) :assert(label!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 30,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        decoration: BoxDecoration(
            color: this.btnBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(25)
        ,boxShadow: [BoxShadow(
              blurRadius: 5,
          color: Colors.black26
        )]
        ),
          child: Text(
            this.label,
            style: TextStyle(
                color: this.textColor ?? Colors.black,
              fontWeight: FontWeight.w500
          ),
          )
      ),


      onPressed: this.onPressed,

    );
  }
}
