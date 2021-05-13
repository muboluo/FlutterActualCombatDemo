import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class NewRouteWithParams extends StatelessWidget {
  final String text;

  const NewRouteWithParams({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPail = WordPair.random().toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("带传参的页面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            RaisedButton(
              onPressed: () => Navigator.of(context).pop("洞洞收到"),
              child: Text("带参数返回"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("english_word包随机方法测试 $wordPail"),
            ),
            Image.asset('images/ic_launcher.png'),
          ],
        ),
      ),
    );
  }
}
