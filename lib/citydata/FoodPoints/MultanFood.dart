import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class MultanFood extends StatefulWidget {
  @override
  _MultanFoodState createState() => _MultanFoodState();
}

class _MultanFoodState extends State<MultanFood> {
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
      'name': "Ramada Multan",
      'address': "76 Abdali\nRoad, Multan\n60000 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/14/66/8b/27/restaurant.jpg",
      'call': '+92 61 4540877',
      'url': "http://www.ramadamultan.com/",
    },
    {
      'name': "Bundu Khan",
      'address': "Abdali Rd\nCantonment,\nMultan\nPakistan",
      'imagex':
          "http://www.bundukhan.pk/images/galleries/fortress-branch/DSC_0163.png",
      'call': '000',
      'url': "http://www.bundukhan.pk/",
    },
    {
      'name': "Zanzibar",
      'address': "64A Abdali Rd\nCantonment\nMultan\nPakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t31.0-8/18358564_1101879426580321_2277602033276431117_o.jpg?_nc_cat=108&_nc_sid=9267fe&_nc_ohc=bEWrvUyikAgAX-Is5xk&_nc_ht=scontent.fkhi2-1.fna&oh=80b631c6d3c0342fb5d25531043d3a77&oe=5F23B9C5",
      'call': '+92614780113114',
      'url':
          "https://www.facebook.com/Zanzibar-Multan-1077407485694182/photos/",
    },
    {
      'name': "Shahjahan Grill",
      'address': "Gulgasht Ave 11A,\nGulgasht Colony,\nMultan Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0d/4d/11/94/exterior-facade.jpg",
      'call': '+92 61 6220330',
      'url': "https://www.facebook.com/ShahjahanGrillOfficial/",
    },
    {
      'name': "London Courtyard",
      'address': "35A, Gulgasht\nColony, Multan\n60000 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-p/12/c2/0f/e1/photo0jpg.jpg",
      'call': '+92 322 2247111',
      'url':
          "https://www.facebook.com/londoncourtyard/posts/looking-for-best-lunch-deals-in-town-look-no-more-london-courtyard-lunch-deals-e/296156820822215/",
    },
    {
      'name': "Café Osteria",
      'address': "25 A Gulgasht,\nMultan\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/a2/fe/ff/finger-lickin-good-chicken.jpg",
      'call': '+92 61 6221599',
      'url': "https://www.facebook.com/osteriafusion",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Multan Food"),
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
