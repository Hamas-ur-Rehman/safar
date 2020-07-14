import 'package:flutter/material.dart';
import 'package:safar/Destinationx/TaxilaHotels.dart';
import 'package:safar/HomePage.dart';
import 'package:safar/citydata/FoodPoints/TaxilaFood.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class TaxilaDetails extends StatefulWidget {
  @override
  _TaxilaDetailsState createState() => _TaxilaDetailsState();
}

class _TaxilaDetailsState extends State<TaxilaDetails> {
  final String txt =
      "Taxila in Sanskrit is a significant archaeological site in the modern city of the same name in Punjab, Pakistan. It lies about 32 km north-west of Islamabad and Rawalpindi, just off the famous Grand Trunk Road.";
  _onTap(int index) {
    switch (index) {
      case 0:
        setState(() => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomePage())));
        break;
      case 1:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => TaxilaHotels())));
        break;
      case 2:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => TaxilaFood())));
        break;
      default:
        Share.share(txt);
    }
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      throw 'cant open url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Explore Taxila"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/img/taxila.jpg'),
                      fit: BoxFit.fitWidth)),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -20),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Taxila an old Civilization",
                      style: new TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    txt,
                    style: TextStyle(
                      color: Colors.grey[850],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 2000,
            child: RaisedButton.icon(
              onPressed: () {
                customLaunch(
                  "https://www.google.com/travel/things-to-do?g2lb=2502548%2C4258168%2C4260007%2C4270442%2C4274032%2C4305595%2C4306835%2C4317915%2C4319922%2C4322822%2C4328159%2C4329288%2C4364504%2C4366684%2C4371335%2C4381263%2C4382625%2C4386665%2C4395590%2C4270859%2C4284970%2C4291517%2C4307996%2C4356900&hl=en&gl=pk&un=1&otf=1&dest_mid=%2Fm%2F01hf6p&dest_state_type=main&sa=X&ved=2ahUKEwjcveeCk53qAhUQ3xoKHaoeCcMQh9IBegQIARBS#ttdm=33.751094_72.874575_12",
                );
              },
              icon: Icon(Icons.explore, color: Colors.white),
              label: Text('Explore', style: TextStyle(color: Colors.white)),
              color: Colors.blue[400],
            ),
          ),
        ],
      ),

      // ],
      // ),
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
                Icons.room_service,
                color: Colors.black,
              ),
              title: Text("Hotel", style: TextStyle(color: Colors.grey))),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.restaurant,
              color: Colors.black,
            ),
            title: Text("Food", style: TextStyle(color: Colors.grey)),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text("Share", style: TextStyle(color: Colors.grey)),
          ),
        ],
        onTap: _onTap,
      ),
    );
  }
}
