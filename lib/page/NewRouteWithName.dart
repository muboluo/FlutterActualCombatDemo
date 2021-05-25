import 'package:flutter/material.dart';

class NewRouteWithName extends StatelessWidget {
  static const TAG = "NewRouteWithName";

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context).settings.arguments;
    print("arguments: $arguments");
    return Scaffold(
      appBar: AppBar(
        title: Text("注册在首页routes中的页面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("上个页面传递过来的值 $arguments")],
        ),
      ),
    );
  }
}
