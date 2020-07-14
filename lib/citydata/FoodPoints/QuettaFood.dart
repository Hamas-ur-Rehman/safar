import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class QuettaFood extends StatefulWidget {
  @override
  _QuettaFoodState createState() => _QuettaFoodState();
}

class _QuettaFoodState extends State<QuettaFood> {
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
      'name': "Lehri Sajji House",
      'address': "Town Centre,\nQuetta Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/05/6d/e8/7f/balochi-sajji.jpg",
      'call': '+92 81 2821255',
      'url': "https://www.facebook.com/LehriSajjiHouseqta/",
    },
    {
      'name': "Usmania Tandoori Restaurant",
      'address': "Jinnah Rd,\nQuetta Pakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t31.0-8/s960x960/10636791_1468929600026812_4342874063472091111_o.jpg?_nc_cat=102&_nc_sid=e3f864&_nc_ohc=HQvT-21iX9QAX-M2bCR&_nc_ht=scontent.fkhi2-1.fna&_nc_tp=7&oh=847d57d3a6efe5819146969521e8e1a8&oe=5F233A37",
      'call': '+92 81 2844127',
      'url': "https://www.facebook.com/UsmaniaRestaurantQuetta/",
    },
    {
      'name': "Saigon",
      'address': "Shahbaz town\nphase 3\nQuetta 83700\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0c/33/7d/df/saigon.jpg",
      'call': '+92 81 2863333',
      'url':
          "https://www.facebook.com/pages/category/Continental-Restaurant/Saigon-Cafe-Restaurant-1017324418339775/",
    },
    {
      'name': "Gulshan Karahi",
      'address': "Toghi Road\nQuetta Pakistan",
      'imagex':
          "https://2.bp.blogspot.com/-NarsoVPLYK4/W_6n_gRJ_6I/AAAAAAAACio/00Zs4dPKLtsxle1rpD7x-ejA_Q8uSyAZgCEwYBhgL/s1600/Chicken-Tikka-Karahi-2%2B%25282%2529.jpg",
      'call': '+92 345 8350874',
      'url': "https://vymaps.com/PK/Gulshan-Karahi-475882/",
    },
    {
      'name': "Road Stoves Cafe",
      'address': "Samungli Road,\nQuetta Pakistan",
      'imagex':
          "https://d2liqplnt17rh6.cloudfront.net/coverImages/7a676a94-4512-4750-99a4-3498baae46ce-525.jpeg",
      'call': '+92 81 2825971',
      'url': "http://www.roadstoves.com.pk/",
    },
    {
      'name': "Italian Creamz",
      'address': "Samugli Road\nNear koila pattak,\nQuetta\n83700 Pakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-0/s600x600/27657105_1748914268501529_7039685404487733301_n.jpg?_nc_cat=108&_nc_sid=8bfeb9&_nc_ohc=oSlVt6BFLOYAX8dV__n&_nc_ht=scontent.fkhi2-1.fna&_nc_tp=7&oh=3a29cd981f4d97d0df1532dcb32b0f53&oe=5F225872",
      'call': '+92 345 8922760',
      'url': "https://www.facebook.com/ItalianCreamz/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Quetta Food"),
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
