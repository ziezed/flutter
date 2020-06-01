import 'package:flutter/material.dart';
import 'package:flutterapp/screen/screenTwo.dart';

class ScreenSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Pertama'),
      ),
      body: Column(
        children: <Widget>[
          Text('klik untuk menuju halaman kedua'),
          RaisedButton(
            color: Colors.green,
            child: Text('screen 2'),
//            onPressed: () {
//              Navigator.push(
//                  context, 
//                  MaterialPageRoute(builder: (context) => ScreenDua()));
//            },
            onPressed: () {
              Navigator.pushNamed(context, '/dua');
//              Navigator.pushReplacementNamed(context, '/dua');
            },
          )
        ],
      ),
    );
  }
}
