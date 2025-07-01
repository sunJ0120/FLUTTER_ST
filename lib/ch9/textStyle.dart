import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt = '불다기불닭 불닥어 불닭스딹스 불다르크불닭기우가 불디기불닭어 불닭가티불닭이온앤온을 낉여오거라불다기불닭 불닥어 불닭스딹스 불다르크불닭기우가 불디기불닭어 불닭가티불닭이온앤온을 낉여오라고 하지않았느냐';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello World',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // 굵게
                  fontStyle: FontStyle.italic,
                  // 기울임꼴
                  color: Colors.red,
                  // 글꼴 색상
                  fontSize: 20,
                  // 글자 사이즈
                  height: 2,
                  // 세로크기 (줄간격)
                  backgroundColor: Colors.yellow,
                  // 바탕색
                  decoration: TextDecoration.underline,
                  // 밑줄 장식
                  decorationColor: Colors.red,
                  // 장식 색상
                  decorationStyle: TextDecorationStyle.wavy // 장식 모양 (물결)
              ),
            ),
            Text(
              longTxt,
              style: TextStyle(
                  fontSize: 20
              ),
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
            RichText(
                text: TextSpan(
                    text: 'HE',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'L',
                          style: TextStyle(fontStyle: FontStyle.italic),
                          children: [
                            TextSpan(text: 'LO'),
                            TextSpan(
                                text: 'WO', style: TextStyle(color: Colors.red)
                            )
                          ]
                      ),
                      TextSpan(
                          text: 'RLD',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      )
                    ]
                )
            )
          ],
        ),
      ),
    );
  }
}
