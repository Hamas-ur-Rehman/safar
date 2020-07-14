import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class TaxilaFood extends StatefulWidget {
  @override
  _TaxilaFoodState createState() => _TaxilaFoodState();
}

class _TaxilaFoodState extends State<TaxilaFood> {
  _onTap(int index) {
    switch (index) {
      case 0:
        setState(() => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomePage())));
        break;
      default:
        setState(() => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Details())));
    }
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      throw 'cant open url';
    }
  }

  List taxilahotels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("Taxila Food"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.map),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => GMapx()));
                }),
          ],
          backgroundColor: Colors.black,
        ),
        body: Center(child: Text('Sorry No Data Available at the moment')),
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text("Home", style: TextStyle(color: Colors.grey))),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                title: Text("Call", style: TextStyle(color: Colors.grey))),
            // new BottomNavigationBarItem(icon: new Icon(Icons.favorite,color: Colors.black,),title: Text("Favorite",style: TextStyle(color: Colors.grey)),),
          ],
          onTap: _onTap,
        ));
  }
}
