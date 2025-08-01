/*
10-2. 위치 설정 위젯 활용하기
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0.0, 0.0),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            ),
            Align(
              //FractionalOffset은 실제 x,y를 기준으로 한다.
              alignment: FractionalOffset(1.0, 0.0),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
            Positioned(
                left: 40.0,
                top: 40.0,
                child: Container(
                  color: Colors.pink,
                  height: 150.0,
                  width: 150.0,
                )
            )
          ],
        ),
      ),
    );
  }
}