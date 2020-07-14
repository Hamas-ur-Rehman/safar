import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class AbtFood extends StatefulWidget {
  @override
  AbtFoodState createState() => AbtFoodState();
}

class AbtFoodState extends State<AbtFood> {
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
      'name': "Usmania Restaurant",
      'address': "Mansehra Road\nAbbottabad\nPakistan",
      'imagex': "https://i.ytimg.com/vi/ThHlLVDvwUI/maxresdefault.jpg",
      'call': '+92 992 382627',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g4366523-d4501837-Reviews-Usmania_Restaurant-Abbottabad_Khyber_Pakhtunkhwa_Province.html",
    },
    {
      'name': "MNAK Restaurant",
      'address': "Murree Road\nHazara Region,\nAbbottabad\n22010 Pakistan",
      'imagex':
          "https://www.restaurant.mnak.com.pk/restaurant_abbottabad/restaurant_abbottabad_10.jpg",
      'call': '+92 992 333501',
      'url': "http://www.restaurant.mnak.com.pk/",
    },
    {
      'name': "Cafe Route 35",
      'address':
          "Main Mansehra\nRoad Yousuf\nJamal Plaza,\nAbbottabad\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/12/0a/92/03/fb-img-1516298186279.jpg",
      'call': '+92 992 400272',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g4366523-d12296155-Reviews-Cafe_Route_35-Abbottabad_Khyber_Pakhtunkhwa_Province.html",
    },
    {
      'name': "Saif Restaurant",
      'address': "Mandain,\nAbbottabad\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0b/31/f1/d2/caption.jpg",
      'call': '+92 992 384046',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g4366523-d10256458-Reviews-Saif_Restaurant-Abbottabad_Khyber_Pakhtunkhwa_Province.html",
    },
    {
      'name': "Coffity",
      'address':
          "First Floor,\nJadoon Plaza\nPhase 2 Above\nUBL ATM,\nAbbottabad\n22010 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/ee/26/8e/cafe-route-35.jpg",
      'call': '+92 320 2633489',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g4366523-d12384901-Reviews-Coffity-Abbottabad_Khyber_Pakhtunkhwa_Province.html",
    },
    {
      'name': "Subway",
      'address':
          "Phase 2 Awan\nShopping Plaza\nNext to Pizza\nOriginale\nAbbottabad\n22010 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/1b/4d/4a/8d/subway-abbottabad.jpg",
      'call': '+92 992 413125',
      'url': "https://www.subway.com/en-PK",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Abbottabad Food"),
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
