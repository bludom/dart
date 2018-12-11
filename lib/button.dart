import 'package:flutter/material.dart';

class DartButton extends StatefulWidget {
  DartButton(this.text);
  final String text;
  _DartButtonState createState() => _DartButtonState(this.text);
}

class _DartButtonState extends State<DartButton> {
  _DartButtonState(this.text);
  final String text;
  int _multiplier=0;
  List<Color> _colors = [Colors.grey, Colors.blue, Colors.red];

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: CircleBorder(),
      height: MediaQuery.of(context).size.width*0.20,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: () => setState(() => _multiplier<2?_multiplier++:_resetMultiplier()),
        color: _colors[_multiplier],
      ), 
    );
  }

  _resetMultiplier() {
    this._multiplier=0;
  }
}