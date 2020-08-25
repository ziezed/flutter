import 'package:flutter/material.dart';

class Fungsi1 extends StatefulWidget {
  @override
  _Fungsi1State createState() => _Fungsi1State();
}

class _Fungsi1State extends State<Fungsi1> {

  String tulisan = 'o';
  String nilai = '';

  penjumlahan() {
    var nilai = 'saydffsa';
//    String tulisan = 'ini baru';
    setState(() {
      tulisan = nilai;
    });
    return nilai;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fungsi'),
      ),
      body: Column(
        children: <Widget>[
          Text(nilai),
          RaisedButton(
            child: Text('Penjumlahan'),
            onPressed: () {
              penjumlahan();
            },
          )
        ],
      ),
    );
  }
}
