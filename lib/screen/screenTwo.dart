import 'package:flutter/material.dart';
//import 'package:flutterapp/screen/screenTree.dart';

class ScreenDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Kedua'),
      ),
      body: Column(
        children: <Widget>[
          Text(' sdfdsfsf '),
          RaisedButton(
            color: Colors.green,
            child: Text('screen 1'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          RaisedButton(
            color: Colors.pinkAccent,
            child: Text('screen 3'),
//            onPressed: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => ScreenTiga()));
//            },
            onPressed: () {
              Navigator.pushNamed(context, '/tiga');
//              Navigator.popAndPushNamed(context, '/tiga');
//              Navigator.pushReplacementNamed(context, '/tiga');
            },
          ),
        ],
      )
    );
  }
}
