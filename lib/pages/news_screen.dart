import 'package:flutter/material.dart';

// 消息
class NewsScreen extends StatefulWidget {
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}
class _KeepAliveDemoState extends State<NewsScreen> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller = TabController(length:2, vsync: this);
  }

  //重写被释放的方法，只释放TabController
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('消息'),
        bottom:TabBar(
          controller: _controller,
          tabs:[
            Tab(icon:Icon(Icons.message)),
            Tab(icon:Icon(Icons.near_me)),
          ],
        )
      ),
      body:TabBarView(
        controller: _controller,
        children: <Widget>[
         Text('2222'),
         Text('3333')
        ],
      )
    );
  }
}
