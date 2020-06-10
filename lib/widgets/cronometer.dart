import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/widgets/circle_container.dart';
import 'package:after_layout/after_layout.dart';

class Cronometer extends StatefulWidget{

  final double initTime,fontsize;

  const Cronometer({Key key, this.initTime=0,this.fontsize}) : super(key: key);
  @override
  CronometerState createState()=> CronometerState();


}

class CronometerState extends State<Cronometer> with AfterLayoutMixin{

  double _time;

  Timer _timer;


  @override void initState() {
    super.initState();
    _time=widget.initTime;
  }

  @override
  void dispose() {
    super.dispose();
    _stop();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void _start(){
    _timer=Timer.periodic(Duration(seconds: 1), (Timer _ ){
      setState(() {
        _time +=1;
      });
    });
  }

  void _stop(){

    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Text(_time.toString(),
            style: TextStyle(fontSize: widget.fontsize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                  child: CircleContainer(
                    child: Icon(
                      Icons.play_arrow,color: Colors.white,
                    ),
                    size: 50,
                  ),
                  onPressed:_start ,
              ),
              CupertinoButton(
                  child: CircleContainer(
                    child: Icon(
                      Icons.stop,color: Colors.white,),
                    size: 50,
                  ),
                  onPressed: _stop,
              )],
          ),
        ],
      ),
    );
  }
  @override
  void didUpdateWidget(Cronometer oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("old fontsize: ${oldWidget.fontsize}");
    print("new fontsize: ${widget.fontsize}");

  }

  @override
  void afterFirstLayout(BuildContext context) {
    // TODO: implement afterFirstLayout
    showDialog(context: this.context,builder: (BuildContext context){
      return AlertDialog(
        title: Text(
        "Primera App Flutter"
      ),
      );
    });

  }

}