import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FourPageState();
  }
}

class FourPageState extends State<FourPage> {
  @override
  void initState() {
    super.initState();
  }

  void goNewPage() {

  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('页面4'),
          centerTitle: true,
        ),
        body: new GestureDetector(
          child: new Center(
            child: new Text('页面4内容，点击转到全新页面'),
          ),
          onTap: goNewPage,
        )
    );
  }
}