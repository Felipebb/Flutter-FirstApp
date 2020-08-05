import 'package:flutter/material.dart';
import 'details.dart';
import 'main.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Listadupla(),
    );
  }
}

class Listadupla extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 60.0),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            color: Colors.white,
            child: ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detail()),
                );
              },
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Title',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Mensagem1', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Mensagem2', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            color: Colors.white,
            child: ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detail()),
                );
              },
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Title2',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Mensagem1', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Mensagem2', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}