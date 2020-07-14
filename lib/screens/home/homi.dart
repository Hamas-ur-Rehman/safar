import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:safar/HomePage.dart';
import 'package:shimmer/shimmer.dart';

class Homi extends StatefulWidget {
  @override
  _HomiState createState() => _HomiState();
}

class _HomiState extends State<Homi> {
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    getCurrentUserInfo();
  }

  final _auth = FirebaseAuth.instance;
  dynamic user;
  String userEmail;

  void getCurrentUserInfo() async {
    user = await _auth.currentUser();
    userEmail = user.email;
  }

  final Geolocator _geolocator = Geolocator();
  var pos;
  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  Position _currentPosition;

  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');
        pos = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexToColor('#202040'),
      body: Column(
        children: [
          Stack(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: IconButton(
                        splashColor: Colors.white,
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          _navigateToHome();
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                    ),
                    child: IconButton(
                        splashColor: Colors.white,
                        icon: Icon(Icons.email, color: Colors.white),
                        onPressed: () {}),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 83.0),
                    child: new Container(
                      height: 48.00,
                      width: 300.00,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(
                          width: 1.00,
                          color: Color(0xffffffff),
                        ),
                        borderRadius: BorderRadius.circular(26.00),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 3.0, left: 10.0),
                            child: Icon(Icons.location_on, color: Colors.black),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, top: 3.0),
                            child: Text("$pos", style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 148.0),
                    child: new Container(
                      height: 120.00,
                      width: 120.00,
                      decoration: BoxDecoration(
                        color: Color(0xff515fd5),
                        border: Border.all(
                          width: 5.00,
                          color: Color(0xffffffff),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: new Container(
                    height: 48.00,
                    width: 296.00,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        width: 1.00,
                        color: Color(0xff707070),
                      ),
                      borderRadius: BorderRadius.circular(26.00),
                    ),
                    child: Text(userEmail) ?? "Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: new Container(
                  height: 48.00,
                  width: 296.00,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(
                      width: 1.00,
                      color: Color(0xff707070),
                    ),
                    borderRadius: BorderRadius.circular(26.00),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 13.0),
                    child: Text(
                      "Account created date",
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: new Container(
                      height: 137.00,
                      width: 144.00,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(
                          width: 1.00,
                          color: Color(0xff707070),
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/travel-blogging-online-outdoor-park-streaming-male-character-sport-internet-broadcasting-host-isolated-white-flat-illustration_109722-1486.jpg?size=626&ext=jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(26.00),
                      ),
                      child: Shimmer.fromColors(
                        period: Duration(milliseconds: 1500),
                        baseColor: HexToColor('#202040'),
                        highlightColor: HexToColor('#FF1C68'),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "blogs",
                                  style: TextStyle(
                                      fontSize: 23.0,
                                      fontFamily: 'Pacifico',
                                      shadows: <Shadow>[
                                        Shadow(
                                            blurRadius: 18.0,
                                            color: Colors.black87,
                                            offset:
                                                Offset.fromDirection(120, 12))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 10.0),
                    child: new Container(
                      height: 137.00,
                      width: 144.00,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(
                          width: 1.00,
                          color: Color(0xff707070),
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://assets.awwwards.com/awards/images/2019/05/illustration-web-design-2-cover.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(26.00),
                      ),
                      child: Shimmer.fromColors(
                        period: Duration(milliseconds: 1500),
                        baseColor: HexToColor('#202040'),
                        highlightColor: HexToColor('#FF1C68'),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "website",
                                  style: TextStyle(
                                      fontSize: 23.0,
                                      fontFamily: 'Pacifico',
                                      shadows: <Shadow>[
                                        Shadow(
                                            blurRadius: 18.0,
                                            color: Colors.black87,
                                            offset:
                                                Offset.fromDirection(120, 12))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
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
