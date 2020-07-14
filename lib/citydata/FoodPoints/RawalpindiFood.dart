import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class RawalpindiFood extends StatefulWidget {
  @override
  _RawalpindiFoodState createState() => _RawalpindiFoodState();
}

class _RawalpindiFoodState extends State<RawalpindiFood> {
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
      'name': "Mei Kong",
      'address': "Saddar,\nRawalpindi\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/10/ed/af/5a/vege-fried-rice.jpg",
      'call': '+92 51 5566577',
      'url': "http://www.meikong.pk/",
    },
    {
      'name': "Tehzeeb Bakers",
      'address': "41-A Hospital\nRoad, Rawalpindi\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/3f/f5/9b/ta-img-20170125-172119.jpg",
      'call': '+92 51 5517033',
      'url': "https://www.tehzeeb.com/",
    },
    {
      'name': "Savour Foods",
      'address': "Gorden College\nRd, Rawalpindi\nPakistan",
      'imagex':
          "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/9/9/0/FNK_the-best-biryani_H.JPG.rend.hgtvcom.826.620.suffix/1568143107638.jpeg",
      'call': '+92 51 2348097',
      'url': "https://www.savourfoods.com.pk/",
    },
    {
      'name': "Texas steak house",
      'address': "Sadar,\nRawalpindi Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/02/e4/30/ee/texas-steak-house.jpg",
      'call': '(051) 2654949',
      'url': "https://www.facebook.com/Texassteakhousepk/?rf=462768483819318",
    },
    {
      'name': "Monal Islamabad",
      'address':
          "Behria Town\nPhase 7\nMargalla Hills,\nIslamabad\n44000 Pakistan",
      'imagex': "https://bolojawan.com/wp-content/uploads/2017/11/117da8z.jpg",
      'call': '+92 51 2898044',
      'url': "https://www.facebook.com/TheMonalRestaurantIslamabad/",
    },
    {
      'name': "Bull Steak House",
      'address':
          "Main Cornich Road\nExtreme Carting,\nPhase 4,Bahria Town,\nRawalpindi\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/a8/0c/6e/main-entrance.jpg",
      'call': '+92 51 5730106',
      'url': "https://www.facebook.com/bullsteakbahria/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Rawalpindi Food"),
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
