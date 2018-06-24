import 'package:flutter/material.dart';

import 'tab1.dart';
import 'tab2.dart';

class SubPage extends StatefulWidget {

  @override
  SubPageState createState() => new SubPageState();
}

class SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['tab1', 'tab2'];

    final List<Widget> widgets = <Widget>[
      new Tab1Page(),
      new Tab2Page()
    ];

    return new DefaultTabController(
      length: widgets.length,
      child:  new Scaffold(
        appBar: new AppBar(
          title: new Text('SubPage'),
          bottom: new TabBar(
            isScrollable: false,
            tabs: tabs.map((String s) => new Tab(text: s)).toList(),
          ),
        ),
        body: new TabBarView(
          children: widgets.map((Widget widget) {
            return new SafeArea(
              top: false,
              bottom: false,
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget,
              ),
            );
          }).toList(),
        ),
    ),
    );
  }
}