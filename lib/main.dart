import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/page/FirstNewRoute.dart';
import 'package:flutter_app/page/NewRouteWithName.dart';
import 'package:flutter_app/page/NewRouteWithParams.dart';
import 'package:flutter_app/page/Route4ContextTest.dart';
import 'package:flutter_app/page/Route4InputAndFormTest.dart';
import 'package:flutter_app/page/Route4TextButtonCheckboxTest.dart';
import 'package:flutter_app/page/RouteStateTest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        NewRouteWithName.TAG: (context) => NewRouteWithName(),
        Route4ContextTest.TAG: (context) => Route4ContextTest(),
        Route4StateTest.TAG: (context) => Route4StateTest(),
        Route4TextButtonCheckboxTest.TAG: (context) =>
            Route4TextButtonCheckboxTest(),
        Route4InputAndFormTest.TAG: (context) => Route4InputAndFormTest(),
      },
      //todo 添加钩子代码和逻辑
      // onGenerateRoute: (RouteSettings settings) {
      //   return MaterialPageRoute(builder: (context) {
      //     print("settings.name $settings.name");
      //
      //   });
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _returnValue = "";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _updateReturnValue() {
    print("return value is $_returnValue");
    setState(() {
      _returnValue = "" + _returnValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstNewRoute();
                }));
              },
              child: Text("跳转普通页面"),
              textColor: Colors.blue,
            ),
            RaisedButton(
              onPressed: () async {
                _returnValue = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return NewRouteWithParams(text: "当前计数：$_counter");
                }));
                _updateReturnValue();
              },
              child: Text("跳转带参数页面"),
            ),
            Text(
              '返回的参数 $_returnValue',
              style: Theme.of(context).textTheme.headline5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(NewRouteWithName.TAG, arguments: "我是洞拐，我是洞拐");
              },
              child: Text("跳转命名路由"),
            ),
            TextButton(
                onPressed: () {
                  debugDumpApp();
                },
                child: Text('打印Widget树')),
            TextButton(
              onPressed: () {
                debugDumpRenderTree();
              },
              child: Text('打印RenderTree'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(Route4ContextTest.TAG, arguments: "我是洞拐");
              },
              child: Text("跳转context 测试"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(Route4StateTest.TAG, arguments: "我是洞拐");
              },
              child: Text("3.2 状态管理"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                      Route4TextButtonCheckboxTest.TAG,
                      arguments: "我是洞拐");
                },
                child: Text("3.3 文本样式")),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Route4InputAndFormTest.TAG, arguments: "我是洞拐");
                },
                child: Text("3.7输入框及表单"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
