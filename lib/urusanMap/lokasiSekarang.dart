import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LokasiSekarang extends StatefulWidget {
  @override
  _LokasiSekarangState createState() => _LokasiSekarangState();
}

class _LokasiSekarangState extends State<LokasiSekarang> {

  String _pesanLokasi = "";

  void _lokasiSekarang () async{
    var posisi = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(posisi);
    setState(() {
      _pesanLokasi = '${posisi.latitude}, ${posisi.longitude}';
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
