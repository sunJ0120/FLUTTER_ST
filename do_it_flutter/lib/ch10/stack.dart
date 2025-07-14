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
        appBar: AppBar(title: Text('Test')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row(
                  //center에 start 지점에서 시작한다.
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row(
                  //spaceBetween : 위젯 간 공백을 균등하게 배치
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row(
                  //spaceEvenly : 앞뒤 그리고 각 위젯간 공백을 균등하게 배치
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 5),
                height: 200,
                child: Stack(
                  children: [
                    Container(color: Colors.red),
                    Container(width: 100, height: 100, color: Colors.green),
                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
