import 'package:flutter/material.dart';

import 'message.dart';
import 'tab1Sub.dart';

class Tab1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Tab1PageState();
  }
}

class Tab1PageState extends State<Tab1Page> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
          child: new Container(
            child: new FlatButton(onPressed: showMsg, child: new Text('点击显示消息'),color: Colors.deepOrange),
          ),
        ),floatingActionButton: new FlatButton(onPressed: goTab1Sub, child: new Icon(Icons.subdirectory_arrow_right)),
    );
  }

  void goTab1Sub() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_){
      return new Tab1SubPage();
    }));
  }

  void showMsg() {
    showMessage(context,'考多少分技术的开发开始大幅扩建按时付款');
  }
}