import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/task_screen.dart';
import 'pages/news_screen.dart';
import 'pages/account_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(TaskScreen())
      ..add(NewsScreen())
      ..add(AccountScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
             icon:Icon(
               Icons.home,
               color:_bottomNavigationColor,
             ),
             title:Text(
               '首页',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.list,
               color:_bottomNavigationColor,
             ),
             title:Text(
               '任务',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.message,
               color:_bottomNavigationColor,
             ),
             title:Text(
               '消息',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.tag_faces,
               color:_bottomNavigationColor,
             ),
             title:Text(
               '我的',
               style:TextStyle(color:_bottomNavigationColor)
             )
           ),
         ],
         currentIndex:_currentIndex,
         onTap:(int index){
           setState((){
             _currentIndex= index;
           });
         },
         type:BottomNavigationBarType.fixed
       ),
     );
  }
}