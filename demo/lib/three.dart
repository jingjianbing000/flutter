import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ThreePageState();
  }
}

class ThreePageState extends State<ThreePage> {
  @override
  void initState() {
    super.initState();
  }

  void goNewPage() {

  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('页面3'),
          centerTitle: true,
        ),
        body: new GestureDetector(
          child: new Center(
            child: new Text('页面3内容，点击转到全新页面'),
          ),
          onTap: goNewPage,
        )
    );
  }
}