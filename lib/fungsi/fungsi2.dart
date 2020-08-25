import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Fungsi2 extends StatefulWidget {
  @override
  _Fungsi2State createState() => _Fungsi2State();
}

class _Fungsi2State extends State<Fungsi2> {
  String _pesanLokasi = "";
  double posLat = 0;
  double posLon = 0;

  void _lokasiSekarang () async{
    var posisi = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//    print(posisi);
    setState(() {
      _pesanLokasi = '${posisi.latitude}, ${posisi.longitude}';
      posLat = posisi.latitude;
      posLon = posisi.longitude;
    });
  }

  void _bersihkanLayar () {
    setState(() {
      _pesanLokasi = "";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map current location'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(_pesanLokasi, style: TextStyle(fontSize: 24),),
            RaisedButton(
              child: Text('Get Location'),
              onPressed: () {
                _lokasiSekarang();
              },
            ),
            RaisedButton(
                child: Text('Bersihkan lokasi'),
                onPressed: () {
                  _bersihkanLayar();
                }
            ),
          ],
        ),
      ),
    );
  }
}


