import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class SwatFood extends StatefulWidget {
  @override
  _SwatFoodState createState() => _SwatFoodState();
}

class _SwatFoodState extends State<SwatFood> {
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
      'name': "Chef & The Whale",
      'address':
          "Budaiya Hwy Al\nAziziyah Commercial\nComplex, Bahrain\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/19/f3/91/22/chef-the-whale.jpg",
      'call': '+973 3417 3404',
      'url': "https://www.facebook.com/chefandthewhale/",
    },
    {
      'name': "Al-Abraaj",
      'address': "Hamala Avenue,\nBahrain 20575\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/16/e2/d3/b9/20190316-182112-largejpg.jpg",
      'call': '17-43 43 43',
      'url': "http://al-abraaj.com/",
    },
    {
      'name': "Crust and Crema",
      'address': "Villa 1771, Road\n3372 AlMarkh 533,\nBahrain 533 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0c/d3/a3/7e/20160903-124353-01-largejpg.jpg",
      'call': '1721 4155',
      'url': "https://www.facebook.com/crustandcremagalleria/",
    },
    {
      'name': "Joeys Pizza",
      'address': "Bahrain Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg",
      'call': '+973 1730 0091',
      'url': "https://www.facebook.com/CafeDeSwat/",
    },
    {
      'name': "Do Darya",
      'address':
          "Swat\nViewHotel, Kalam\nRoad Fizagat\nSangota\nSwat, 1 km\nAhead From\nSwat High\nCourt Fizagat,\nMingora, 3866,\nPākistān\nSangota-19200",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/69699833_1262494093911896_3360822152617000960_n.jpg?_nc_cat=111&_nc_sid=8bfeb9&_nc_ohc=DeBTEATgKkgAX98H_42&_nc_ht=scontent.fkhi2-1.fna&oh=1a554a954e6093759dc15b62e808ebf7&oe=5F245F8A",
      'call': '0344 1099501',
      'url': "https://www.facebook.com/DoDaryarestaurant/",
    },
    {
      'name': "Hujra Restaurant Swat",
      'address': "Bypass\nRoad Mingora\nSwat, Mingora\n19200 Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/15/48/d1/d1/hujra-restaurant-river.jpg",
      'call': '+92 946 812123',
      'url': "https://www.facebook.com/hujrarestaurantswat",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Swat Food"),
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
