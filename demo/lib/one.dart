import 'package:flutter/material.dart';

import 'sub.dart';

class OnePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new OnePageState();
  }
}

class OnePageState extends State<OnePage> {
  @override
  void initState() {
    super.initState();
  }

  void goNewPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new SubPage();
    }));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('页面1'),
        centerTitle: true,
      ),
      body: new GestureDetector(
        child: new Center(
          child: new Text('页面1内容，点击转到全新页面'),
        ),
        onTap: goNewPage,
      )
    );
  }
}