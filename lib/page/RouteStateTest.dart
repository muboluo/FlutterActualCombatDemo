import 'package:flutter/material.dart';
import 'package:flutter_app/widget/TapboxA.dart';
import 'package:flutter_app/widget/TapboxB.dart';
import 'package:flutter_app/widget/TapboxC.dart';

class Route4StateTest extends StatelessWidget {
  static const TAG = "Route4StateTest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3.2 WidgetState管理"),
      ),
      body: Column(
        children: [
          TapboxAWidget(),
          TapboxBParentWidget(),
          TapboxCParentWidget(),
        ],
      ),
    );
  }
}
