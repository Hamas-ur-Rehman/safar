import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:safar/services/auth.dart';
import 'package:safar/shared/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    getPrefs();
  }

  void getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      likes = _getList();
      likes = _getList() ?? List();
    });
  }

  Future<bool> _saveList() async {
    return await prefs.setStringList("key", likes);
  }

  List<String> _getList() {
    return prefs.getStringList("key");
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      throw 'cant open url';
    }
  }

  final AuthService _auth = AuthService();

  bool save = false;

  List<String> likes = ["extra"];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              title: Text('Safar Blog'),
              backgroundColor: Colors.black,
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: Text(
                    'logout',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
              ],
            ),
            body: StreamBuilder(
                stream: Firestore.instance.collection('post').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Loading();
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot mypost =
                            snapshot.data.documents[index];
                        return Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 360.0,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, bottom: 8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: new Radius.circular(16.0),
                                        topRight: new Radius.circular(16.0),
                                        bottomLeft: new Radius.circular(16.0),
                                        bottomRight: new Radius.circular(16.0),
                                      ),
                                      child: Material(
                                        color: Colors.white,
                                        elevation: 24.0,
                                        shadowColor: Colors.grey[300],
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        new Radius.circular(
                                                            16.0),
                                                    topRight:
                                                        new Radius.circular(
                                                            16.0),
                                                    bottomLeft:
                                                        new Radius.circular(
                                                            16.0),
                                                    bottomRight:
                                                        new Radius.circular(
                                                            16.0),
                                                  ),
                                                  child: Stack(children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 200,
                                                      child: Image.network(
                                                        "${mypost['image']}",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        new Radius.circular(
                                                            16.0),
                                                    topRight:
                                                        new Radius.circular(
                                                            16.0),
                                                    bottomLeft:
                                                        new Radius.circular(
                                                            16.0),
                                                    bottomRight:
                                                        new Radius.circular(
                                                            16.0),
                                                  ),
                                                  child: SizedBox(
                                                    height: 10.0,
                                                  ),
                                                ),
                                                Text(
                                                  "${mypost['title']}",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 10.0),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "${mypost['subtitle']}",
                                                      style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.grey[600]),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 325.0, left: 245, bottom: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FloatingActionButton(
                                        elevation: 14,
                                        backgroundColor: Colors.white,
                                        tooltip: 'Increment',
                                        child: Icon(
                                          likes.contains(mypost['title'])
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: likes.contains(mypost['title'])
                                              ? Colors.red
                                              : Colors.black,
                                        ),
                                        onPressed: () {
                                          _getList();
                                          setState(() {
                                            // saved.length;
                                            if (likes
                                                .contains(mypost['title'])) {
                                              likes.remove(mypost['title']);
                                              prefs.setStringList("key", likes);

                                              _saveList();
                                            } else {
                                              likes.add(mypost['title']);
                                              prefs.setStringList("key", likes);
                                              _saveList();
                                            }
                                          });
                                        }),
                                    FloatingActionButton(
                                        elevation: 50,
                                        backgroundColor: Colors.black,
                                        tooltip: 'Increment',
                                        child: Icon((Icons.web),
                                            color: Colors.white),
                                        onPressed: () {
                                          customLaunch("${mypost['url']}");
                                        }),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }
                })));
  }
}
