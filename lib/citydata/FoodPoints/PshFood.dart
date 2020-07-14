import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class PshFood extends StatefulWidget {
  @override
  _PshFoodState createState() => _PshFoodState();
}

class _PshFoodState extends State<PshFood> {
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
      'name': "Charasi Tikka Shop",
      'address': "Namak Mandi,\nPeshawar\nPakistan",
      'imagex': "https://i.dawn.com/primary/2019/01/5c2dd06bbbe42.jpg",
      'call': '+92 91 5850709',
      'url':
          "https://www.facebook.com/pages/category/Barbecue-Restaurant/Khyber-Charsi-Tikka-Shop-Peshawar-160178788085276/",
    },
    {
      'name': "Chief Burger Peshawar",
      'address': "Jamrud Road\nFawad Plaza,\nPeshawar 25000\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/07/a3/5e/f2/chief-burger-peshawar.jpg",
      'call': '+92 91 5844788',
      'url': "http://www.chief.com.pk/index.html",
    },
    {
      'name': "Cafe Crunch",
      'address':
          "House #45-D, Old\nJamrud Road,\nUniversity Town.,\nPeshawar 25000\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/15/78/ec/6e/img-20181122-wa0019-largejpg.jpg",
      'call': '+92 91 5701061',
      'url': "https://www.facebook.com/CafeCrunch/",
    },
    {
      'name': "Shiraz Ronaq",
      'address':
          "1 Saddar Road\nopposite cantt\nRailway Station\nPeshawar 25000\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/06/6d/18/5c/shiraz-saddar-oldest.jpg",
      'call': '+92 91 5284201',
      'url': "https://www.facebook.com/shirazronaq/",
    },
    {
      'name': "Hong Kong chines Restaurant",
      'address': "The Mall\nCantonment,\nPeshawar\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/07/4f/73/09/hong-kong-restaurant.jpg",
      'call': '+92 925 862155',
      'url': "https://www.facebook.com/hongkongchinesrestaurant",
    },
    {
      'name': "Shelton's Layalina",
      'address': "Park Avenue\nRoad University\nTown, Peshawar\n25000 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/09/86/cd/b3/shelton-s-layalina.jpg",
      'call': '+(92)91-5843572-5',
      'url': "https://www.tmhotels.com/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Peshawar Food"),
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
