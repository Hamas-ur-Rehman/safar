import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safar/HomePage.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), () => _navigateToHome());
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              'lib/img/wp.jpg',
              fit: BoxFit.fill,
            ),
            Shimmer.fromColors(
              period: Duration(milliseconds: 1500),
              baseColor: HexToColor('#202040'),
              highlightColor: HexToColor('#FF1C68'),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 200.0),
                        child: Text(
                          "Safar",
                          style: TextStyle(
                              fontSize: 90.0,
                              fontFamily: 'Pacifico',
                              shadows: <Shadow>[
                                Shadow(
                                    blurRadius: 18.0,
                                    color: Colors.black87,
                                    offset: Offset.fromDirection(120, 12))
                              ]),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 28.0, bottom: 28.0),
                      //   child: CircularProgressIndicator(),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 20.0),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 260.0),
            //     child: Text(
            //       "Pakistan is one of the most intriguing and interesting\n                            countries in the world",
            //       style: TextStyle(
            //           fontSize: 13,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
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
