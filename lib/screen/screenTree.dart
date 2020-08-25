import 'package:flutter/material.dart';
//import 'package:flutterapp/screen/screenOne.dart';

class ScreenTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Ketiga'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.lightGreenAccent,
            child: Text('screen 2'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          RaisedButton(
            color: Colors.pinkAccent,
            child: Text('screen 1'),
//            onPressed: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => ScreenSatu()));
//            },
            onPressed: () {
//              Navigator.pushNamed(context, '/');
//              Navigator.popAndPushNamed(context, '/');
//              Navigator.pushReplacementNamed(context, '/');
              Navigator.popUntil(context, ModalRoute.withName('/'));

            },
          ),
        ],
      ),
    );
  }
}
