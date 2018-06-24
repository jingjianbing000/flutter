import 'package:flutter/material.dart';

import 'app.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
  }

  void goMain() {
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => new MyHomePage()),
              (route) => route == null);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body:new Center(
        child: new RaisedButton(onPressed: goMain,child: new Text('点击按钮跳转'),textColor: Colors.blueGrey,),
      )
    );
  }
}