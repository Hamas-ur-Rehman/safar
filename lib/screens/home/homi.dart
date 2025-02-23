import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:safar/screens/home/Home.dart';
import 'package:safar/screens/home/Nav.dart';
import 'package:safar/services/utilityx.dart';
import 'package:shimmer/shimmer.dart';
import 'package:intl/intl.dart';

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
    loadImageFromPreferences();
  }

  final _auth = FirebaseAuth.instance;
  dynamic user;
  String userEmail = "Email";
  dynamic created = "Account created date";

  void getCurrentUserInfo() async {
    user = await _auth.currentUser();
    userEmail = user.email;
    created =
        DateFormat("MM/dd/yyyy").format(user.metadata.creationTime).toString();
  }

  final Geolocator _geolocator = Geolocator();
  var pos;
  void _navigateToHome() {
    Navigator.pop(context);
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
        pos = position.toString();
      });
    }).catchError((e) {
      print(e);
    });
  }

  Future<File> imageFile;
  Image imageFromPreferences;

  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  loadImageFromPreferences() {
    Utility.getImageFromPreferences().then((img) {
      if (null == img) {
        return;
      }
      setState(() {
        imageFromPreferences = Utility.imageFromBase64String(img);
      });
    });
  }

  Widget imageFromGallery() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          //print(snapshot.data.path);
          Utility.saveImageToPreferences(
              Utility.base64String(snapshot.data.readAsBytesSync()));
          return Image.file(
            snapshot.data,
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return imageFromPreferences ??
              Icon(
                Icons.person,
                color: Colors.white,
                size: 55,
              );
        }
      },
    );
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
                      top: 19.0,
                    ),
                    child: IconButton(
                        splashColor: Colors.white,
                        icon: Icon(Icons.exit_to_app, color: Colors.white),
                        onPressed: () async {
                          await _auth.signOut();
                        }),
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
                      width: 320.00,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(
                          width: 1.00,
                          color: Color(0xffffffff),
                        ),
                        borderRadius: BorderRadius.circular(26.00),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child:
                                  Icon(Icons.location_on, color: Colors.black),
                            ),
                            Text("$pos",
                                style: TextStyle(fontSize: 14) ??
                                    "Your coordintaes"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Column(
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
                                child: Center(
                                    child: Container(
                                        width: 110,
                                        height: 110,
                                        child: ClipOval(
                                          child: imageFromGallery(),
                                        ))))),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          pickImageFromGallery(ImageSource.gallery);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 237.0, left: 85),
                          child: new Container(
                            height: 29.00,
                            width: 30.00,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              border: Border.all(
                                width: 1.00,
                                color: Color(0xffffffff),
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(30.00, 29.00)),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: HexToColor('#202040'),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
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
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 2.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.mail, color: Colors.black),
                            ),
                            Expanded(
                              child: Text(userEmail,
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 15)),
                            ),
                          ],
                        ))),
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
                    padding: const EdgeInsets.only(left: 15.0, top: 2.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.access_time, color: Colors.black),
                        ),
                        Text(
                          created,
                          style: TextStyle(
                                  color: Colors.grey[800], fontSize: 15) ??
                              "Account created date",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Padding(
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Nav()));
                    },
                    child: Padding(
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
