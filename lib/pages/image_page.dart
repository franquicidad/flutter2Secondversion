import 'package:flutter/material.dart';
import 'package:flutter2/widgets/my_appBar.dart';

class ImagePageArgs {
  final String username;
  final bool isActive;

  ImagePageArgs({@required this.username,@required this.isActive});
}

class ImagesPage extends StatefulWidget {

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {

  @override
  Widget build(BuildContext context) {

    final ImagePageArgs args=ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MyAppBar(
                barTitle: "Images",
                iconColor: Colors.black,
                isDotVisible: false,
                barTitleColor: Colors.blue,
                leftIcon: Icon(Icons.keyboard_backspace,color: Colors.black,),
                rightIcon: Icon(Icons.camera,color:Colors.black),
                onLeftClick: ()=>
                    Navigator.pop(context)
                ,
              ),
              Expanded(
                child: Center(
                  child: Stack(
                    children:[
                      Container(

                        child: Image.network(
                            "https://img.freepik.com/foto-gratis/"
                                "equipo-entrenamiento-fisico-pesa-gimnasia-"
                                "o-barra-sobre-superficie-piso-madera-concepto-"
                                "plano-desaturado_140008-108.jpg?size=626&ext=jpg",
                            width: 350,
                            height: 350
                        ),

                      ),
                      Positioned(
                        top:120,
                        right: 50,
                        child: Text("Programando en Flutter",
                          style: TextStyle(color: Colors.white,
                              fontSize: 22,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Positioned(
                        top:170,
                        right: 80,
                        child: Text("Camino a la grandeza",
                          style: TextStyle(color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
