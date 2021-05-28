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
  TextEditingController _nameController = TextEditingController();
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusScopeNode scopeNode;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      print(_nameController.text);
    });
    _nameController.text = "HELLO TEST";
    _nameController.selection =
        TextSelection(baseOffset: 2, extentOffset: _nameController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField 测试'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            focusNode: node1,
            controller: _nameController,
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            focusNode: node2,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () {
              if (null == scopeNode) {
                scopeNode = FocusScope.of(context);
              }
              scopeNode.requestFocus(node2);
            },
            child: Text('切换焦点'),
          ),
          ElevatedButton(
              onPressed: () {
                node1.unfocus();
                node2.unfocus();
              },
              // 所有输入框都失去焦点之后，键盘会自动隐藏。
              child: Text('所有输入框都失去焦点，隐藏键盘')),
        ],
      ),
    );
  }
}
