import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class ShogranFood extends StatefulWidget {
  @override
  _ShogranFoodState createState() => _ShogranFoodState();
}

class _ShogranFoodState extends State<ShogranFood> {
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
      'name': "Markhor Cafe",
      'address':
          "Near Hill Top\nHotel, in front\nof Lalazar Hotel,\nShogran 21200\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/18/c6/93/96/img-20190626-wa0018-largejpg.jpg",
      'call': '+92 313 5555098',
      'url': "https://www.facebook.com/MarkhorCafe/",
    },
    {
      'name': "Balakot Chappal Kabab",
      'address': " Naran Rd\nBalakot,\nMansehra,\nKhyber\nPakhtunkhwa",
      'imagex':
          "https://i.pinimg.com/originals/28/d9/77/28d977c4d8bdca42ec93f249d7fda01f.jpg",
      'call': '0',
      'url':
          "https://www.google.com/search?safe=active&bih=961&biw=1455&hl=en&sxsrf=ALeKk03HDQXxo5WZ1eE7efdbyR9secn9Mw:1593692897223&q=kaghan+valley+food+places&npsic=0&rflfq=1&rlha=0&rllag=34577152,73342505,13302&tbm=lcl&ved=2ahUKEwiElZTYyK7qAhVSx4UKHY3oCrsQjGp6BAgLEEE&rldoc=1#rlfi=hd:;si:;mv:[[34.9538836,73.6910255],[34.1122288,73.19207829999999]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!1m4!1u16!2m2!16m1!1e1!1m4!1u16!2m2!16m1!1e2!2m1!1e2!2m1!1e16!2m1!1e3!3sIAE,lf:1,lf_ui:9",
    },
    {
      'name': "Ichrian",
      'address': "Mansehra,\nKhyber Pakhtunkhwa",
      'imagex': "https://i.ytimg.com/vi/y9cm3-Cnppo/maxresdefault.jpg",
      'call': '0',
      'url':
          "https://www.google.com/maps/dir/Islamabad/kaghan+valley+food+places/@34.0504552,72.6624436,10z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x38dfbfd07891722f:0x6059515c3bdb02b6!2m2!1d73.0478848!2d33.6844202!1m5!1m1!1s0x38de11054118403d:0xb6e7ec15d051d282!2m2!1d73.2188076!2d34.514257?hl=en",
    },
    {
      'name': "Punjab Tikka House Naran",
      'address':
          "Naran Bazar\nNear Swiss\nWood Cottage,\nMain Bazar,\nNaran Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/13/7e/52/4e/outdoor-seating.jpg",
      'call': '+92 336 9879979',
      'url': "https://www.facebook.com/punjab.tikka.house/",
    },
    {
      'name': "Moon Restaurant",
      'address': "Naran\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/13/f4/b9/31/view.jpg",
      'call': '+92 342 2922080',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g1772449-d12954604-Reviews-Moon_Restaurant-Naran_Khyber_Pakhtunkhwa_Province.html",
    },
    {
      'name': "Doble Roti Cafe",
      'address': "Main Naran\nBazar Road.\nNaran Pakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-0/p526x296/65755892_796259957435030_8610004712181202944_o.jpg?_nc_cat=103&_nc_sid=730e14&_nc_ohc=PAWNS54SuNEAX-AO7sB&_nc_ht=scontent.fkhi2-1.fna&_nc_tp=6&oh=f961603264e2441b47d14de26fefe546&oe=5F24448C",
      'call': '+92 344 5005555',
      'url': "https://www.facebook.com/dobleroti/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Shogran Food"),
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
