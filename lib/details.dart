import 'package:flutter/material.dart';


class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body:
      detailSection,
    );
  }
}
Widget detailSection = Column(
    children: <Widget>[
      SizedBox(height: 30.0),
      Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 400.0,
          height: 260.0,
          child: Column(
            children: <Widget>[
              SizedBox(height: 14.0),
              Expanded(
                child: Text(
                  'Title1',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  'Mensagem1',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  'Mensagem2',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],

          ),
        ),
      ),
    ],
);



