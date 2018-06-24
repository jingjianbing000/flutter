import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TwoPageState();
  }
}

class TwoPageState extends State<TwoPage> {
  @override
  void initState() {
    super.initState();
  }

  void goNewPage() {

  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('页面2'),
          centerTitle: true,
        ),
        body: new GestureDetector(
          child: new Center(
            child: new Text('页面2内容，点击转到全新页面'),
          ),
          onTap: goNewPage,
        )
    );
  }
}