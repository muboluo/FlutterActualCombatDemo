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
          DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("hello"),
                  Text("hello2"),
                  Text(
                    "hello3",
                    style: TextStyle(inherit: false, color: Colors.yellow),
                  ),
                ],
              )),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
            height: 50,
            fit: BoxFit.fill,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100,
            height: 50,
            fit: BoxFit.fitWidth,
          ),
          Image(
            image: AssetImage("images/ic_launcher.png"),
            width: 100,
            height: 50,
            fit: BoxFit.fitHeight,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100,
            height: 50,
            fit: BoxFit.none,
          ),
        ],
      ),
    );
  }
}
