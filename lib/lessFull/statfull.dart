import 'package:flutter/material.dart';

class ContohVariabel extends StatefulWidget {
  @override
  _ContohVariabelState createState() => _ContohVariabelState();
}



class _ContohVariabelState extends State<ContohVariabel> {
  String nama;
//  int angka;
  List<String> arrlist =[];

  _ContohVariabelState(){
//    nama = 'yanayaani';
    for (int i = 0; i < 100; i++) {
//      print('hello ${i + 1}');
      arrlist.add(i.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
//    debugPrint(arrlist.toString());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('test')),
      ),
      body: ListView(
        children: arrlist.map((arr) => Text(arr, style: TextStyle(fontSize: 20))).toList(),
      ),
    );
  }
}
