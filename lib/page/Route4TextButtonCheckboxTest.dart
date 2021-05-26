import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Route4TextButtonCheckboxTest extends StatelessWidget {
  static const TAG = 'Route4TextButtonCheckboxTest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3.3 文本及样式"),
      ),
      body: Column(
        children: [
          Text(
            "文本测试1",
            textScaleFactor: 1.5,
          ),
          Text(
            "文本测试2",
            textAlign: TextAlign.right,
          ),
          Text(
            "文本测试3文本测试3文本测试3文本测试3文本测试3文本测试3文本测试3",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "文本测试4" * 3,
            style: TextStyle(
              height: 1.3,
              fontFamily: 'Courier',
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ],
      ),
    );
  }
}
