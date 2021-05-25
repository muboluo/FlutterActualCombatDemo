import 'package:flutter/material.dart';

/**
 * context测试类， 用于测试 flutter context 文章中的代码
 * https://book.flutterchina.club/chapter3/flutter_widget_intro.html#_3-1-4-statelesswidget
 */
class Route4ContextTest extends StatelessWidget {
  static const String TAG = "Route4ContextText";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("context test"),
      ),
      body: Container(
        child: Builder(builder: (context) {
          Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
          print("title 内容：" + ((scaffold.appBar as AppBar).title as Text).data);
          return (scaffold.appBar as AppBar).title;
        }),
      ),
    );
  }
}
