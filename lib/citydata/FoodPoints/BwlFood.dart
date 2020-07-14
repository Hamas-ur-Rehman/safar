import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class BwlFood extends StatefulWidget {
  @override
  _BwlFoodState createState() => _BwlFoodState();
}

class _BwlFoodState extends State<BwlFood> {
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
      'name': "Libra Valley",
      'address':
          "Libra Trail\nNear Satluj\nToll Plaza,\nBahawalpur\n63100 Pakistan",
      'imagex':
          "https://content.pk/wp-content/uploads/2017/06/Beautiful-Libra-Valley-Restaurant.jpg",
      'call': '+92 300 8687034',
      'url': "https://www.facebook.com/libravalleybwp/",
    },
    {
      'name': "4 Seasons Restaurant",
      'address': "Muhammad Bin\nQasim Rd,\nBahawalpur\nPakistan",
      'imagex':
          "https://www.facebook.com/pages/4-Seasons-Restaurant/378723162181369",
      'call': '+92 62 2874067',
      'url':
          "https://media-cdn.tripadvisor.com/media/photo-s/17/6c/52/15/imag0054-largejpg.jpg",
    },
    {
      'name': "Salt' n Pepper",
      'address':
          "D DC Chowk,\nOpposite\nCommissioner\nHouse,\nBahawalpur\n63100 Pakistan",
      'imagex':
          "https://cdn-az.allevents.in/banners/a2759cd51b639eaf11fc3896c1a2fcff-rimg-w720-h405-gmir.jpg",
      'call': '062-2740271-2',
      'url':
          "https://www.facebook.com/Salt-N-Pepper-Bahawalpur-147668825738506/",
    },
    {
      'name': "Almaida Fried Chicken",
      'address': "Circular Rd\nChowk Fawara,\nBahawalpur\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/08/25/ee/d2/al-maida.jpg",
      'call': '+92 62 2887789',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g1459874-d4889964-Reviews-Almaida_Fried_Chicken-Bahawalpur_Punjab_Province.html",
    },
    {
      'name': "Chicken Cottage",
      'address': "Railway Rd,\nBahawalpur\n63100 Pakistan",
      'imagex':
          "https://www.croozi.com/upload/loc1024/ChickenCottage472016.jpg",
      'call': '+92 300 8682282',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g1459874-d10039849-Reviews-Chicken_Cottage-Bahawalpur_Punjab_Province.html",
    },
    {
      'name': "Kebabish grill",
      'address': "Ahmed pur road\nBahawalpur\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/9c/22/71/yummy.jpg",
      'call': '+92 333 8681515',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g1459874-d10688722-Reviews-Kebabish_grill-Bahawalpur_Punjab_Province.html",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Bahawalpur Food"),
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
