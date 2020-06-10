import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget{
  final Widget child;
  //final Color colors;
  final double size;

  CircleContainer({@required this.child, @required this.size,}) //@required this.colors})
      :assert(child!=null), assert(size !=null && size>=0); //assert(colors!=null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.size,
      height: this.size,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 10,
              offset: Offset(4,10)
          )]
      ),
    );
  }

}