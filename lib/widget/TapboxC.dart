import 'package:flutter/material.dart';

class TapboxCParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TapboxCParentWidgetState();
}

class _TapboxCParentWidgetState extends State<TapboxCParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool tapActive) {
    setState(() {
      _active = tapActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapboxC(
      active: _active,
      onChanged: _handleTapboxChanged,
    );
  }
}

class TapboxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highLight = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onHandleTapDown,
      onTapCancel: _onHandleTapCancel,
      onTapUp: _onHandleTapUp,
      onTap: _onHandleTap,
      child: Container(
          child: Center(
            child: Text(
              widget.active ? 'Active' : 'Inactive',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
              color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
              border: _highLight
                  ? Border.all(
                      color: Colors.teal[700],
                      width: 10.0,
                    )
                  : null)),
    );
  }

  void _onHandleTapDown(TapDownDetails details) {
    setState(() {
      _highLight = true;
    });
  }

  void _onHandleTapCancel() {
    setState(() {
      _highLight = false;
    });
  }

  void _onHandleTapUp(TapUpDetails details) {
    setState(() {
      _highLight = false;
    });
  }

  void _onHandleTap() {
    widget.onChanged(!widget.active);
  }
}
