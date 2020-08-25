import 'package:flutter/material.dart';

class Kolom extends StatefulWidget {
  @override
  _KolomState createState() => _KolomState();
}

class _KolomState extends State<Kolom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: <Widget>[
          Container(
//              width: 100,
//              height: 60,
            color: Colors.green,
            child: RaisedButton(
                color: Colors.white,
                child: Text('Klik Saya'),
                onPressed: null
            ),
          ),
//          Container(
//            width: 100,
//            height: 80,
//            color: Colors.pinkAccent,
//          ),
//          Container(
//            width: 100,
//            height: 100,
//            color: Colors.black,
//          )
        ],
      ),
    );
  }
}
