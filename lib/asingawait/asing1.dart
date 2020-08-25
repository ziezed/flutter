import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Asink extends StatefulWidget {
  @override
  _AsinkState createState() => _AsinkState();
}

class _AsinkState extends State<Asink> {

  getPosisi() async{
    Position posisi = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return posisi;

//    var response =  await http.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian");
//    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
//    print(posLat);
    return Scaffold(
      appBar: AppBar(
        title: Text('Async Await'),
      ),
      body: FutureBuilder(
        future: getPosisi(),
        builder: (context, snapshot){
          if (snapshot.hasData) {
//            print({snapshot.data});
            var posLat = snapshot.data.latitude;
            var posLon = snapshot.data.longitude;
            print(posLat);
            print(posLon);
            // tampilkan dvarata
            return Container(
              width: 100,
              height: 100,
              child: Text('$posLat , $posLon'),
            );
          } else {
            return Center (
                child: CircularProgressIndicator()
            );
          }
        }
      ),
    );
  }
}
