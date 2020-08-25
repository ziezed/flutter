import 'package:flutter/material.dart';

class Ekspand extends StatefulWidget {
  @override
  _EkspandState createState() => _EkspandState();
}

class _EkspandState extends State<Ekspand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expand'),
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Row 2'),
            ],
          ),
          Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('row 1'),
                RaisedButton(
                  onPressed: () {
                    print('udah di klik');
                  },
                  child: Text('OK'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
