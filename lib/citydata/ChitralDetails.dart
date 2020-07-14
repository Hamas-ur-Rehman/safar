import 'package:flutter/material.dart';
import 'package:safar/Destinationx/ChitralHotels.dart';
import 'package:safar/HomePage.dart';
import 'package:safar/citydata/FoodPoints/ChitralFood.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class ChitralDetails extends StatefulWidget {
  @override
  _SwatDetailsState createState() => _SwatDetailsState();
}

class _SwatDetailsState extends State<ChitralDetails> {
  final String txt =
      "Chitral is undoubtedly the most romantic, captivating and enchanting place in the majestic Hindukush range. Chitral Valley at an elevation of 1128 meters has Afghanistan on its North, South and West.It is surrounded by the Wakhan, Badkhshan, Asmar and Nooristan area of Afghanistan in the north, west and south-west";
  _onTap(int index) {
    switch (index) {
      case 0:
        setState(() => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => HomePage())));
        break;
      case 1:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => ChitralHotels())));
        break;
      case 2:
        setState(() => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => ChitralFood())));
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
        title: Text("Explore Chitral"),
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
                      image: AssetImage('lib/img/chitral.jpg'),
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
                      "Chitral and the Kalash",
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
                  'https://www.google.com/travel/things-to-do?g2lb=2502548,4258168,4260007,4270442,4274032,4305595,4306835,4317915,4319922,4322822,4328159,4329288,4364504,4366684,4371335,4373849,4381263,4382625,4385383,4386665,4395397,4395590,4270859,4284970,4291517,4307996,4356900&hl=en&gl=pk&un=1&otf=1&dest_mid=/m/057x6z&dest_state_type=main&sa=X&ved=2ahUKEwiby57q0ZfqAhUOCRoKHf-iBfIQh9IBegQIARBA',
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
