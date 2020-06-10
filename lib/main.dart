import 'package:flutter/material.dart';
import 'package:flutter2/pages/home_page.dart';
import 'package:flutter2/pages/image_page.dart';
import 'package:flutter2/pages/post_page.dart';
import 'package:flutter2/pages/splash_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        "ImagesRoute":(BuildContext context)=>ImagesPage(),
        "home":(BuildContext context)=>HomePage(),
        PostPage.routeName:(_)=>PostPage(),

      },
    );
  }

}


