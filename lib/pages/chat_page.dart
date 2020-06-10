import 'package:flutter/material.dart';
import 'package:flutter2/widgets/my_appBar.dart';

class ChatPage extends StatefulWidget {
  final String username;

  const ChatPage({Key key,@required this.username})
      :assert(username!=null),
        super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MyAppBar(
                iconColor: Colors.red,
                barTitle: "Chat",
                isDotVisible: false,
                leftIcon: Icon(Icons.keyboard_backspace,color: Colors.black,),
                rightIcon: Icon(Icons.accessibility,color: Colors.transparent),
                onLeftClick: ()=>
                  Navigator.pop(context)
                ,
              ),
              Expanded(child:
                Center(
                    child:
                    Text(widget.username,style:
                    TextStyle(color: Colors.blue,
                        fontSize: 22 ,
                        letterSpacing: 1,
                        fontWeight:
                        FontWeight.w600),
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
