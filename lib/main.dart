import 'package:flutter/material.dart';
import 'log.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('AppFelipe'),
        ),
        body: Login(),
      ),
    ),
  );
}






