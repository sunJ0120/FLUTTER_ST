import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListWidget(), //StatefulWidget을 home으로 둔다.
    );
  }
}

class MyListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyListWidgetState();
  }
}
//State
class _MyListWidgetState extends State<MyListWidget>{
  List<Widget> widgetList = [
    //여기서 StatefulWidget을 객체로 받아서 저장한다.. 이게 일종의 컴포넌트? 비슷한 거 같다.
    MyColorItemWidget(Colors.red, key: UniqueKey(),),
    MyColorItemWidget(Colors.blue, key: UniqueKey(),),
  ];

  onChange(){
    print(widgetList.elementAt(0).key); //key를 print 해본다.
    //그럼, 현재는 키로 연결되어 있으므로 버튼을 누를 때마다 이 key가 변해야 한다.
    setState(() { //이를 통해 위젯의 상태를 변경한다.
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Key Test'),),
      body: Column( //여기 안에 row로 위젯 리스트를 넣고, change 함수를 발생시키는 버튼을 넣는다.
        children: [
          Row(children: widgetList),
          ElevatedButton(onPressed: onChange, child: Text("toggle"))
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget{
  Color color;
  //super(key: key); 이를 통해 부모 클래스의 생성자를 호출해서 해당 키를 넘긴다. (뒤가 initializer list이다..)
  MyColorItemWidget(this.color, {Key? key}) : super(key: key);

  //Stateful에서는 createState를 통해 State을 return 한다.
  @override
  State<StatefulWidget> createState() {
    return _MyColorItemWidgetState(color);
  }
}

class _MyColorItemWidgetState extends State<MyColorItemWidget>{
  //원하는 컬러를 생성자로 받아서 해당 생성자를 그린다.
  Color color;
  _MyColorItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: color,
          width: 150,
          height: 150,
        )
    );
  }
}