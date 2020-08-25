import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LokasiInit extends StatefulWidget {
  @override
  _LokasiInitState createState() => _LokasiInitState();
}

class _LokasiInitState extends State<LokasiInit> {
  var l = 10;
  var m;
  var posisi;

  @override
  void initState() {
    super.initState();
    Future<Position> posisi = Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var m = posisi;
    print('init state');
    l = 25;
  }

  @override
  Widget build(BuildContext context) {
    print('build state');
    return Scaffold(
      appBar: AppBar(
        title: Text('menggunakan init state'),
      ),
      body: Column(
        children: <Widget>[
          Text('data', style: TextStyle(fontSize: 24),),
          RaisedButton(
            onPressed: () {
              print('nilai l: $l');
              print(posisi);
            } ,
          )
        ],
      ),
    );
  }
}
