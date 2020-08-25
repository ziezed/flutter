import 'package:flutter/material.dart';
import 'package:flutterapp/asingawait/asing1.dart';
import 'package:flutterapp/fungsi/fungsi1.dart';
import 'package:flutterapp/fungsi/fungsi2.dart';
import 'package:flutterapp/responsive/ekspand.dart';
import 'package:flutterapp/rowcolumn/baris.dart';
import 'package:flutterapp/rowcolumn/kolom.dart';
import 'package:flutterapp/urusanMap/lokasiInit.dart';
//import 'package:flutterapp/screen/screenOne.dart';
//import 'package:flutterapp/screen/screenTree.dart';
//import 'package:flutterapp/screen/screenTwo.dart';
import 'package:flutterapp/urusanMap/lokasiSekarang.dart';
import 'package:flutterapp/urusanMap/tempat.dart';
//import 'package:flutterapp/lessFull/statfull.dart';
//import 'package:flutterapp/lessFull/wijet.dart';
//import 'package:flutterapp/list/listStateLess.dart';
//import 'package:flutterapp/list/testList3.dart';
//import 'package:flutterapp/lessFull/statlessFull.dart';
//import 'package:flutterapp/list/testList.dart';
//import 'package:flutterapp/list/testList2.dart';
//import 'package:flutterapp/list/testList4.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi untuk testing',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Tempat(),
        //ini bagian route
//      initialRoute: '/',
//      routes: {
//        '/': (context) => ScreenSatu(),
//        '/dua': (context) => ScreenDua(),
//        '/tiga': (context) => ScreenTiga(),
//      },
    );
  }
}
