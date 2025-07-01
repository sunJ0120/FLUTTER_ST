import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // rootBundle을 이용해 애셋 파일을 읽어 반환하는 함수
  Future<String> useRootBundle() async{
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  // DefaultAssetBundle을 이용해서 에셋 파일을 읽어 반환하는 함수
  Future<String> useDefaultAssetBundle(BuildContext context) async{
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("asset Test"),
        ),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            //FutureBuilder는 비동기 데이터를 이용해 화면을 구성하는 위젯이다.
            FutureBuilder(
              future: useRootBundle(), //useRootBundle() 함수를 호출한다.
              builder: (context, snapshot){ //useRootBundle() 함수의 결괏값이 snapshot()에 전달되며, 이 값으로 화면을 구성한다.
                return Text('rootBundle : ${snapshot.data}');
              },
            ),

            FutureBuilder(
              future: useDefaultAssetBundle(context), //useDefaultAssetBundle() 함수를 호출한다.
              builder: (context, snapshot){ //DefaultAssetBundle() 함수의 결괏값이 snapshot()에 전달되며, 이 값으로 화면을 구성한다.
                return Text('DefaultAssetBundle : ${snapshot.data}');
              },
            )
          ],
        ),
      ),
    );
  }
}