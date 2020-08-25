import 'package:flutter/material.dart';

class Baris extends StatefulWidget {
  @override
  _BarisState createState() => _BarisState();
}

class _BarisState extends State<Baris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            onPressed: null,
            child: Text('Klik'),
          ),
          Container(
//            width: 100,
//            height: 60,
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: Colors.green,
            child: RaisedButton(
              onPressed: null,
              child: Text('Klik'),
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

/*


 */