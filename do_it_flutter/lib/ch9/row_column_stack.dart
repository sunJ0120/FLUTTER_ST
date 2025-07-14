import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('test')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Stack(
                  children : [
                    Container(
                      color : Colors.red,
                    ),
                    Container(
                      width : 300,
                      height : 300,
                      color : Colors.red,
                    ),
                    Container(
                      width : 150,
                      height : 150,
                      color : Colors.yellow,
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
