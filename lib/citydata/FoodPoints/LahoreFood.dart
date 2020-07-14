import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class LahoreFood extends StatefulWidget {
  @override
  _LahoreFoodState createState() => _LahoreFoodState();
}

class _LahoreFoodState extends State<LahoreFood> {
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

  List food = [
    {
      'name': "Salt'n Pepper",
      'address':
          '48 - Commercial\nZone Liberty\nMarket\nGulberg Iii\nLahore\nPakistan',
      'imagex':
          "https://d37b3blifa5mva.cloudfront.net/000_clients/755192/page/w1000-755192nllD2tTB.jpg",
      'call': '42 35752893 – 4',
      'url': 'http://www.saltnpepper.com.pk/salt-n-pepper-restaurant',
    },
    {
      'name': 'The Brasserie',
      'address': '3 Mall One\n94 D1 Gulberg\nLahore\nPakistan',
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/10/ec/de/0d/the-brasserie-restaurant.jpg",
      'call': '+92 322 4444123',
      'url': 'http://thebrasserie.com.pk/',
    },
    {
      'name': "Nando's",
      'address': 'MM Alam Road\nLahore\nPakistan',
      'imagex':
          "https://pkgiftshop.com/wp-content/uploads/2020/01/Nandos-Dinner-Gift-Voucher.jpg",
      'call': ' (042) 111 626 367',
      'url': 'https://www.nandos.com/',
    },
    {
      'name': 'Sadiq Halwa Puri',
      'address': 'Gawalmandi\nRailway Road\nLahore 54000\nPakistan',
      'imagex': "https://i.ytimg.com/vi/yxYY_gcMbQI/maxresdefault.jpg",
      'call': ' 0323 3333169',
      'url': 'https://sadiq-halwa-puri-restaurant.business.site/',
    },
    {
      'name': 'Monal Lahore',
      'address':
          'Park and Ride\nPlaza, Liberty\nRoundabout\nLahore 54000\nPakistan',
      'imagex': "https://trace.pk/wp-content/uploads/2019/07/monal-1.jpg",
      'call': '+92 42 35789823',
      'url': 'http://lahore.themonal.com/',
    },
    {
      'name': 'Mano Siri Paye',
      'address': 'Sultan Pura\nSultanpura\nMisri Shah\nLahore, Punjab',
      'imagex': "https://i.ytimg.com/vi/cbW_j1whdaI/maxresdefault.jpg",
      'call': '0',
      'url': 'https://www.hungerist.com/restaurant/mano-siri-paye',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Lahore Food"),
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
      ),
      body: new ListView.builder(
        itemCount: food.length,
        itemBuilder: (context, index) {
          return new Padding(
            padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: new Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: new Radius.circular(16.0),
                        topRight: new Radius.circular(16.0),
                      ),
                      child: new Image.network('${food[index]['imagex']}',
                          fit: BoxFit.cover),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(16.0),
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                  child: new Text(
                                    '${food[index]['name']}'.toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                              ],
                            ),
                            new SizedBox(height: 10.0),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text('${food[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${food[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch('${food[index]['url']}');
                                      },
                                      icon: Icon(Icons.access_time),
                                      label: Text('Details'),
                                      color: Colors.amber,
                                      elevation: 10.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
