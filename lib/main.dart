import 'package:flutter/material.dart';
import './button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bludom Dart'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _createRows(20),
          )],
        ),
      ),
    );
  }
}

List<Widget> _createRows(int number) {
  var result = new List<Widget>();
  for (var i = 1; i < number+1; i = i + 4) {
    result.add(new Row(children: _createButtons(i, i + 4)));
  }
    result.add(DartButton("Bull"));
  return result;
}

List<Widget> _createButtons(int from, to) {
  var res = new List<Widget>();
  for (var i = from; i <= to; i++) {
    res.add(DartButton(i.toString()));
  }
  return res;
}
