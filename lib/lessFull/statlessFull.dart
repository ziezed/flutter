import 'package:flutter/material.dart';

class StatelessFull extends StatefulWidget {
  @override
  _StatelessFullState createState() => _StatelessFullState();
}

class _StatelessFullState extends State<StatelessFull> {
  String namaKota = "";
  @override
  Widget build(BuildContext context) {
    debugPrint('inisiai pertama $namaKota');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('OneJek')),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30)),
          Text('masukkan nama kota', style: TextStyle(fontSize: 20)),
          TextField(
            onSubmitted: (String userInput) {
              setState(() {
                debugPrint('ini setalah disubmit');
                namaKota = userInput;
              });
            },
          ),
          Text('nama kotanya adalah : $namaKota', style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}

