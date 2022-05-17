import 'package:flutter/material.dart';


void main() {
  runApp(
    //materialapp위젯 사용함 (option : title, theme, home)
      MaterialApp(
        //option
          home: CaffApp()
      )
  );
}

//state사용
class CaffApp extends StatefulWidget {
  const CaffApp({Key? key}) : super(key: key);
  @override
  State<CaffApp> createState() => _CaffAppState();
}

class _CaffAppState extends State<CaffApp> {
  //tab의  state
  var stateTab = 0;

  @override
  Widget build(BuildContext context) {
    //scafflod 위젯 리턴
    return Scaffold(
      //appbar (네비바)
      appBar: AppBar(
          title: Text('CaffApp'),
          ),
      //본문에 text
      //List형식으로 tab 보여줄것임 (if써도됨)
      body: [Text("메인페이지"), Text('기록페이지')][stateTab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //onTap .. i는 0,1,2... 순서대로 부여됨
        onTap: (i){
          //state를 바꿔주려면 setstate를 사용해야함
          setState(() {
            stateTab = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: '기록'),
        ],
      ),
    );
  }
}