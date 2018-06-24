import 'package:flutter/material.dart';

void showMessage(context,str) {
  showDialog(
    context: context,
    child: new AlertDialog(
      title: new Text('提示'),
      content: new Text(str),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        )
      ],
    ),
  );
}
