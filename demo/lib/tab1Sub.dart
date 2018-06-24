import 'package:flutter/material.dart';

import 'message.dart';

class Tab1SubPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Tab1SubPageState();
  }
}

class Tab1SubPageState extends State<Tab1SubPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Tab1Sub'),
        centerTitle: true,
      ),
      body: new Center(
       child:  new Text('Tab1SubPage'),
      ),
      floatingActionButton: new FlatButton(onPressed: showMsg, child: new Icon(Icons.mail)),
    );
  }
  
  void showMsg() {
    showMessage(context,'开始独立房间ask的地方解开了士大夫艰苦了');
  }
}

