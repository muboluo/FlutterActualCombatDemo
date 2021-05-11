import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstNewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First new route"),),
      body: Center(child: Text("This is my first new route"),),
    );
  }
}
