import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    this.title,
    this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              color: Colors.lightBlue,
              padding: EdgeInsets.all(50),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(title),
                  Text(body)
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom list'),
      ),
      body: ListView(
        children: <Widget>[
          CustomListTile(
            title: 'ini judul title',
            body: 'ini lah body nya',
          )
        ],
      ),
    );
  }
}
