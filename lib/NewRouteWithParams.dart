
import 'package:flutter/material.dart';

class NewRouteWithParams extends StatelessWidget {
  final String text;

  const NewRouteWithParams({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("带传参的页面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            RaisedButton(
              onPressed: () =>
                  Navigator.of(context).pop("洞洞收到"),
              child: Text("带参数返回"),
            ),
          ],
        ),
      ),
    );
  }
}
