import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class IslFood extends StatefulWidget {
  @override
  _IslFoodState createState() => _IslFoodState();
}

class _IslFoodState extends State<IslFood> {
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
      'name': "Monal Islamabad",
      'address':
          "Behria Town\nPhase 7\nMargalla Hills,\nIslamabad\n44000 Pakistan",
      'imagex': "https://bolojawan.com/wp-content/uploads/2017/11/117da8z.jpg",
      'call': '+92 51 2898044',
      'url': "https://www.facebook.com/TheMonalRestaurantIslamabad/",
    },
    {
      'name': "Kabul Restaurant",
      'address': "College Road\nJinnah Market,\nIslamabad\nPakistan",
      'imagex':
          "https://bolojawan.com/wp-content/uploads/2018/01/kabul-restaurant-in-Islamabad.jpg",
      'call': '+92 51 2650953',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g293960-d1482914-Reviews-Kabul_Restaurant-Islamabad_Islamabad_Capital_Territory.html",
    },
    {
      'name': "Chaaye Khana",
      'address':
          "School Road\nShop # 11,\n1st Floor,\nBlock B, United\nBakery Plaza,\nSupermarket,\nF-6 Markaz,\nIslamabad\n44000 Pakistan",
      'imagex':
          "https://logicalbaat.com/static/uploads/2019/03/cafe-interior-architecture-CITE-Islamabad-1.jpg",
      'call': '+92 51 8312192',
      'url': "http://www.chaayekhana.com/",
    },
    {
      'name': "Street 1 Cafe",
      'address': "2, Kohsar\nMarket 1 Street 1,\nIslamabad\n44000 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/bb/f8/96/im-diplo-viertel.jpg",
      'call': '+92 51 2823431',
      'url': "https://www.facebook.com/street1cafeisb/",
    },
    {
      'name': "Tuscany Courtyard",
      'address': "F-6/3, Kohsar\nMarket,\nIslamabad\n44000 Pakistan",
      'imagex':
          "https://folder.pk/wp-content/uploads/2018/02/Tuscany-Courtyard.jpg",
      'call': '+92 51 8445544',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g293960-d3862707-Reviews-Tuscany_Courtyard-Islamabad_Islamabad_Capital_Territory.html",
    },
    {
      'name': "Des Pardes Restaurant",
      'address': "Saidpur\nVillage,\nIslamabad\n44000 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/07/35/45/3c/des-pardes-restaurant.jpg",
      'call': '+92 51 2320008',
      'url': "http://despardes.com.pk/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Islamabad Food"),
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
