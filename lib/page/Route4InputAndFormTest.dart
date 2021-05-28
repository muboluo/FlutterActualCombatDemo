import 'package:flutter/material.dart';

/**
 * https://book.flutterchina.club/chapter3/input_and_form.html#_3-7-1-textfield
 */
class Route4InputAndFormTest extends StatefulWidget {
  static const TAG = 'Route4InputAndFormTest';

  @override
  State<StatefulWidget> createState() => _Route4InputAndFormState();
}

class _Route4InputAndFormState extends State<Route4InputAndFormTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField 测试'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
