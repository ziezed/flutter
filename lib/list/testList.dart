import 'package:flutter/material.dart';

class TemplateList extends StatelessWidget {
  final String title;
  final String subtitle;
  TemplateList({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

List<String> ambilDataList(){

  var items = List<String>.generate(5, (i) => "ItemA $i");

  return items;
}


class ListBasic extends StatefulWidget {
  @override
  _ListBasicState createState() => _ListBasicState();
}

class _ListBasicState extends State<ListBasic> {

  var orang = List();

  _ListBasicState(){
    for (int i = 0; i < 20 ; i++)
      orang.add({'nama' : 'boneka'+i.toString(), 'hobi' : 'bohong'+i.toString()});
  }

//  var orang = [
//    {'nama' : 'joni', 'hobi' : 'mancing'},
//    {'nama' : 'siti', 'hobi' : 'makan'}
//    ];

  var listItems = ambilDataList();

  @override
  Widget build(BuildContext context) {
    debugPrint(listItems.toString());
    debugPrint(orang.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('contoh list'),
      ),
      body: ListView(
//        children: listItems.map((e) => Text(e.toString())).toList(),
//        children: listItems.map((e) => TemplateList(title: e, subtitle: e+'sdadad')).toList(),
//        children: orang.map((user) => Text('${user['nama']} dan hobinya : ${user['hobi']}')).toList(),
        children: orang.map((e) => TemplateList(title: '${e['nama']}', subtitle: '${e['hobi']}')).toList(),

      ),
    );
  }
}

