import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'one.dart';
import 'two.dart';
import 'three.dart';
import 'four.dart';

import 'message.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: _willPopCallback,
        child: new Scaffold(
          backgroundColor: Colors.grey,
          body: new PageView(
            children: <Widget>[
              new OnePage(),
              new TwoPage(),
              new ThreePage(),
              new FourPage()
            ],
            controller: pageController,
            onPageChanged: onPageChanged,
            physics: new AlwaysScrollableScrollPhysics(),
          ),
          bottomNavigationBar: new BottomNavigationBar(items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.laptop_chromebook),
                title: new Text("主页"),
                backgroundColor: Colors.grey),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.list),
                title: new Text("分类"),
                backgroundColor: Colors.grey),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.local_grocery_store),
                title: new Text("购物车")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person), title: new Text("我的"))
          ], onTap: onTap, currentIndex: page),
        ));
  }

  @override
  void initState() {
    super.initState();
    changeStatusBarColor();
    pageController = new PageController(initialPage: this.page);
  }

  void changeStatusBarColor() async {
    try {
      await FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    } catch (e) {
      print(e);
    }
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }

  Future<bool> _willPopCallback() async {
    showMessage(context, '确认要退出吗？');
    return false;
  }
}
