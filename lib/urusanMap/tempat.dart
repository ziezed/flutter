import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Tempat extends StatefulWidget {
  @override
  _TempatState createState() => _TempatState();
}

class _TempatState extends State<Tempat> {
  String _alamat = "Posisi";
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  getPosisi() async{
    Position posisi = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return posisi;
  }

  getAlamat() async{
    Position posisi = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> place = await Geolocator().placemarkFromCoordinates(posisi.latitude, posisi.longitude, localeIdentifier: "en");

    Placemark placeMark  = place[0];
    String name = placeMark.name;
    String subLocality = placeMark.subLocality;
    String locality = placeMark.locality;
//    String administrativeArea = placeMark.administrativeArea;
//    String postalCode = placeMark.postalCode;
//    String country = placeMark.country;
//    Position position = placeMark.position;
//    String address = "${name}, ${subLocality}, ${locality}, ${administrativeArea} ${postalCode}, ${country}";
    String address = "${name}, ${subLocality}, ${locality}";
//    String address = "${position}";

    print(address);
//    setState(() {
//      _alamat = address;
//    });
    return address;
  }

//  final LatLng _center = const LatLng(1.677668, 101.445441);
  //google location 37.4219983,-122.084
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Location'),
        ),
        body: Stack(
          children: <Widget>[
            FutureBuilder(
              future: getPosisi(),
              builder: (context, snapshot){
                if (snapshot.hasData){
//                  print(snapshot.data);
                  var posLat = snapshot.data.latitude;
                  var posLon = snapshot.data.longitude;
                  return GoogleMap(
                    myLocationEnabled: true,
                    zoomControlsEnabled: false,
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(posLat, posLon),
                      zoom: 16.0,
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),

            Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.lightGreenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('$_alamat'),
                    RaisedButton(
                      onPressed: () async{
                          Position l =await getPosisi();
                          print(l);
                          String alamat = await getAlamat();
                          print(alamat);

                      },
                      child: Text('dsfsf'),
                      )
                    ],
                  ),
                ),
              ],
            )
          ]
        )
    );
  }
}
