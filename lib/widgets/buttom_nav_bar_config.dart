import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavItem {
  final String iconPath,label;

  ButtonNavItem({@required this.iconPath,@required this.label});
}

class ButtomNav extends StatelessWidget{

  final List<ButtonNavItem> items;

  ButtomNav({@required this.items}):assert(items!=null && items.length>0);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: Colors.white,
      padding: EdgeInsets.all(10),
      child:
      SafeArea(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index){

          final ButtonNavItem item= items[index];
          return Expanded(
            child: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      item.iconPath,
                      width: 27,
                    ),
                    SizedBox(
                      height: 5,

                    ),
                    Text(
                      item.label,
                      style: TextStyle(color: Colors.black,fontSize: 12),

                    )

                  ],
                ),
                onPressed: (){}
            ),
          );
        }),
      ),
      ),
    );
  }

}