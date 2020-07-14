import 'package:flutter/material.dart';
import 'package:safar/Destinationx/RawalpindiHotels.dart';
import 'package:safar/HomePage.dart';
import 'package:safar/citydata/FoodPoints/RawalpindiFood.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class RawalpindiDetails extends StatefulWidget {
  @override
  _RawalpindiDetailsState createState() => _RawalpindiDetailsState();
}

class _RawalpindiDetailsState extends State<RawalpindiDetails> {
  final String txt =
      "Rawalpindi, commonly known as Pindi, is a city and capital of Rawalpindi Division located in the Punjab province of Pakistan. Rawalpindi is the fourth-largest city proper in Pakistan.";
  _onTap(int index) {
    switch (index) {
      case 0:
        setState(() => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomePage())));
        break;
      case 1:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => RawalpindiHotels())));
        break;
      case 2:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => RawalpindiFood())));
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
        title: Text("Explore Rawalpindi"),
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
                      image: AssetImage('lib/img/rawalpindi.jpg'),
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
                      "Rawalpindi the twin City",
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
                  'https://www.google.com/travel/things-to-do?g2lb=2502548,4258168,4260007,4270442,4274032,4305595,4306835,4317915,4319922,4322822,4328159,4329288,4364504,4366684,4371335,4381263,4382625,4386665,4395397,4395590,4270859,4284970,4291517,4307996,4356900&hl=en&gl=pk&un=1&otf=1&dest_mid=/m/01yf40&dest_state_type=main&sa=X&ved=2ahUKEwiupI-Q2ZrqAhWrz4UKHZAqA1IQh9IBegQIARBG',
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
