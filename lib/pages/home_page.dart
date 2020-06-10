import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/pages/chat_page.dart';
import 'package:flutter2/pages/post_page.dart';
import 'package:flutter2/pages/splash_page.dart';
import 'package:flutter2/widgets/avatar.dart';
import 'package:flutter2/widgets/buttom_nav_bar_config.dart';
import 'package:flutter2/widgets/circle_container.dart';
import 'package:flutter2/widgets/cronometer.dart';
import 'package:flutter2/widgets/my_appBar.dart';
import 'package:flutter2/widgets/my_btn.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtomNav(
        items: [
          ButtonNavItem(iconPath: "assets/browser.svg", label: "Inicio"),
          ButtonNavItem(
              iconPath: "assets/calendario.svg", label: "Seguimientos"),
          ButtonNavItem(iconPath: "assets/person.svg", label: "Chat"),
          ButtonNavItem(
              iconPath: "assets/browser.svg", label: "Desarrollo Flutter"),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: <Widget>[
            MyAppBar(
              barTitle: "Home",
              isDotVisible: true,
              iconColor: Colors.red,
              leftIcon: Icon(Icons.camera, size: 30, color: Colors.black),
              rightIcon: Icon(Icons.message, size: 30, color: Colors.black),
              onRightClick: () {
                final route = MaterialPageRoute(builder: (BuildContext _) {
                  return ChatPage(
                    username: "Felipe Franco",
                  );
                });
                Navigator.push(context, route);
              },
              onLeftClick: () {
                Navigator.pushNamed(context, "ImagesRoute",
                    arguments: ImagePageArgs(
                        username: "Felipe Franco", isActive: true));
              },
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                //Pone los elementos a la derecha,izquierda o centrados
                crossAxisAlignment: CrossAxisAlignment.center,
                //pone los elementos en el centro del contenedor ya sea en la parte de
                //arriba o abajo.
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  //Icon(assets/flutter_bird_side.png),
                  ImageAsset(),
                  Text(
                    "Bienvenido",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.blue,
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: SizedBox(height: 10),
                  ),
                  Text(
                    "Felipe Franco",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                    height: 1,
                    width: 100,
                    margin: EdgeInsets.only(top: 30),
                    color: Colors.black,
                  ),
                  Container(
                    child: SizedBox(height: 10),
                  ),

                  SizedBox(
                    height: 20,
                  ),

//              CupertinoButton(child: Text("Upload"),
//                  color: Colors.blue,
//                  onPressed: ()=> print("Uploading"),
//                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//              ),
                  _isEnabled == true
                      ? Cronometer(
                          initTime: 0,
                          fontsize: _fontSize,
                        )
                      : Container(),
                  SizedBox(
                    height: 5,
                  ),
                  MyBtn(
                    label: "My Posts",
                    onPressed: (){
                      Navigator.pushNamed(context, PostPage.routeName);
                    },
                  ),
//                      CupertinoButton(
//                        padding: EdgeInsets.all(10),
//                        onPressed: (){
//                          setState(() {
//                            _isEnabled=!_isEnabled;
//                          });
//                        },
//                        color: Colors.blue,
//                        child: Text(
//                            "Enable cronometer : "
//                                "$_isEnabled"
//                        ),
//                      ),
//                      SizedBox(
//                          height: 20
//                      ),
//                      CupertinoButton(
//                        padding: EdgeInsets.only(left: 60,right: 60,top: 0,bottom: 0),
//
//                        onPressed: (){
//                        final route= MaterialPageRoute(builder:(BuildContext _ )=>
//                          ChatPage(username: "null",)
//                        );
//                         Navigator.push(context, route);
//                        },
//                        color: Colors.green,
//                        child: Text(
//                            "Go to chat"
//                        ),
//                      ),
                  //Darwin revisa esto porfavor...
                  Container(
                    child: SvgPicture.network(
                      "https://www.flaticon.com/free-icon/fingerprint_3039475",
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/flutter_bird_side.png");
    Image image = Image(image: assetImage);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                height: 70,
                child: image),
            Avatar(),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ],
    );
  }
}
