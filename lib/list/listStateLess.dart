import 'package:flutter/material.dart';

class ListBasic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contoh list'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}

