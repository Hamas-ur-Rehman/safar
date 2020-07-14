import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class KarachiFood extends StatefulWidget {
  @override
  _KarachiFoodState createState() => _KarachiFoodState();
}

class _KarachiFoodState extends State<KarachiFood> {
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
      'name': "Famous O's Pizza",
      'address':
          "Shop # 1,\nBuilding 5C,\nKhayaban-\ne-Sheher,\nDHA Phase At\nthe intersection\nof 26th street\nand Khayaban-\ne-Seher,\nKarachi 75500\nPakistan",
      'imagex': "https://i.dawn.com/large/2015/12/567bb329e08fa.jpg",
      'call': '+92 335 2277669',
      'url': "https://www.famousos.com/",
    },
    {
      'name': "Kolachi Restaurant",
      'address': "Beach Avenue\nDHA Phase 8,\nKarachi\nPakistan",
      'imagex':
          "https://lh3.googleusercontent.com/proxy/o6jNvhrAh3IyOkGwzQWB3qE_K5cTWdbuZzz4Afbbj0IZEdcdscb30SVTEW3gUW0XkhbaXP13MAdur369jdSjh0-awheyCJNll5YNpHy9TaWcI_mMczWnj8l_ZJSyqIlxpRMhcFiWdXxaN4HsRgvzyWJKTxQ9zAAeAfHdnXKCyto0JN-GCLO7uCGI",
      'call': '+92 21 32003628',
      'url': "https://www.facebook.com/KolachiSpiritofkarachi",
    },
    {
      'name': "Sakura",
      'address':
          "Hotel Pearl\nContinental,\nZiauddin Ahmed\nRoad, Karachi\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/02/40/2b/a2/sakura.jpg",
      'call': '021111505505',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g295414-d1095684-Reviews-Sakura-Karachi_Sindh_Province.html",
    },
    {
      'name': "Movenpick",
      'address': "Club Road,\nKarachi 75530\nPakistan",
      'imagex':
          "https://theversant.com/wp-content/uploads/2015/09/IMG_8051.jpg",
      'call': '+92 21 35633333',
      'url':
          "https://www.movenpick.com/en/asia/pakistan/karachi/hotel-karachi/restaurants/restaurants/the-pakistani/",
    },
    {
      'name': "LalQila",
      'address': "10/A M.A.C.H.S\nShahrah-e-Faisal,\nKarachi 75350\nPakistan",
      'imagex':
          "https://lalqila.com/karachi/wp-content/uploads/2015/01/Lalqila-Restaurant-Karachi-Buffet.jpg",
      'call': '4529493',
      'url': "https://lalqila.com/",
    },
    {
      'name': "Ginsoy - Extreme Chinese",
      'address':
          "29-C Main\nKhayaban-e-Shahbaz\nDHA, Phase 6,\nKarachi 75400\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/14/d4/c6/92/red-roast-chicken.jpg",
      'call': '+92 21 111 446 769',
      'url': "http://ginsoy.com/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Karachi Food"),
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
