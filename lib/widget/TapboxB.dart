import 'package:flutter/material.dart';

/*
*  测试所有的状态都由父类来管理的 widget。
*/
class TapboxBParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TapboxBParentWidgetState();
}

class _TapboxBParentWidgetState extends State<TapboxBParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

//因为所有的状态都由父widget 来管理，所以 TapboxB 是不需要关心状态的，
// 直接继承无状态的。
class TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxB({Key key, this.active, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }

  void _handleTap() {
    onChanged(!active);
  }
}
