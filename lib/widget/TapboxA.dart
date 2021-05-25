import 'package:flutter/material.dart';

// 管理自身状态的测试用例
class TapboxAWidget extends StatefulWidget {
  TapboxAWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _TapboxAWidgetState();
}

class _TapboxAWidgetState extends State<TapboxAWidget> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : "Inactive",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
