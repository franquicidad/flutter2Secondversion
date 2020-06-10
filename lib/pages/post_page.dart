import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/utils/fakelist.dart';
import 'package:flutter2/widgets/my_appBar.dart';

class PostPage extends StatefulWidget {
  static final routeName= "posts";
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  List<String> _data=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(

          children: <Widget>[
            MyAppBar(
              iconColor: Colors.black,
                barTitle: "Posts",
                isDotVisible:true,
              leftIcon: Icon(Icons.arrow_back,color: Colors.black,
              ),
              onLeftClick:()=>Navigator.pop(context),
              onRightClick: (){
                setState(() {
                  _data.add("Item ${_data.length}");
                });
              },
              rightIcon: Icon(Icons.message,color: Colors.black,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _data.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (BuildContext context,int position){
                final String item=_data[position];
                return ListTile(
                  title: Text(item),
                  subtitle: Text(DateTime.now().toString()),
                  leading: Icon(Icons.shopping_cart,size: 50,),
                  onTap: (){

                  },
                  onLongPress: (){
                    _data.removeAt(position);

                    setState(() {
                    });
                  },
                );

              }),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
