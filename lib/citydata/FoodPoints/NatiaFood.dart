import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class NatiaFood extends StatefulWidget {
  @override
  _NatiaFoodState createState() => _NatiaFoodState();
}

class _NatiaFoodState extends State<NatiaFood> {
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
      'name': "Sweettooth Mushkpuri",
      'address': "7 Dungagali,\nKPK, Nathia\nGali 22300\nPakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t31.0-0/p180x540/18814467_164391644097218_5488198123489486538_o.jpg?_nc_cat=100&_nc_sid=e3f864&_nc_ohc=ak3qhC02Z9kAX9dFyOL&_nc_ht=scontent.fkhi2-1.fna&_nc_tp=6&oh=5c06f6677f49b43c710152d55afb5412&oe=5F23ED35",
      'call': '+92 341 7774777',
      'url': "https://www.facebook.com/sweettoothmukshpuri",
    },
    {
      'name': "Khiva Resturant",
      'address': "Main Bazar\nMain Abotabad Road,\nNathia Gali\nPakistan",
      'imagex': "https://iserve.pk/wp-content/uploads/2019/10/kh1570181772.PNG",
      'call': '+1 337-707-7773',
      'url': "https://www.facebook.com/KHIVA.Nathia.Gali/",
    },
    {
      'name': "Blue Rock Hotel",
      'address': "Kashmir Point,\nMurree Pakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/17/04/e3/33/cafeteria-is-breath-taking.jpg",
      'call': '+92 51 3411522',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g662316-d3780493-Reviews-Blue_Rock_Hotel-Murree_Punjab_Province.html",
    },
    {
      'name': "Saddle Dining Room",
      'address': "Murree Road Near\nRamada Hotel,\nIslamabad 44000\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/12/d9/35/31/veranda.jpg",
      'call': '000',
      'url':
          "https://www.facebook.com/notes/islamabad-club/saddle-dining-room/497680850329611/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Natia Gali Food"),
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
