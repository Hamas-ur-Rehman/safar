import 'package:flutter/material.dart';

class Homi extends StatefulWidget {
  @override
  _HomiState createState() => _HomiState();
}

class _HomiState extends State<Homi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          new Container(
            height: 200.0,
            decoration: new BoxDecoration(
              color: HexToColor('#FF1C68'),
              boxShadow: [new BoxShadow(blurRadius: 40.0)],
              borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class HexToColor extends Color {
  static _hexToColor(String code) {
    return int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  }

  HexToColor(final String code) : super(_hexToColor(code));
}
