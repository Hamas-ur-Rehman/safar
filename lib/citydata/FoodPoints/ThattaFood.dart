import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class ThattaFood extends StatefulWidget {
  @override
  _ThattaFoodState createState() => _ThattaFoodState();
}

class _ThattaFoodState extends State<ThattaFood> {
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
      'name': "Food Qila",
      'address': "Ghullam\nUllah\nRoad Makli,\nThatta\nPakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/10436085_489281384537066_1404479279294426711_n.jpg?_nc_cat=105&_nc_sid=cdbe9c&_nc_ohc=wR8dLjYs63kAX9tZoTq&_nc_ht=scontent.fkhi2-1.fna&oh=495347d413975a1c4c2ca86738e69135&oe=5F29798B",
      'call': '+92 321 3058700',
      'url': "http://foodqila.com/",
    },
    {
      'name': "Autaq Cafe",
      'address':
          "Near Shah\nMurad Pump,\nMain National\nHighway 5,\nThatta\nPakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/26168105_1790053441005666_6594039182864286679_n.jpg?_nc_cat=105&_nc_sid=e3f864&_nc_ohc=NmE0663fK3gAX-9j2pR&_nc_ht=scontent.fkhi2-1.fna&oh=60863aac90a665a10cd3274d62d543a2&oe=5F287355",
      'call': '+92 333 7741672',
      'url': "https://www.facebook.com/autaaq/",
    },
    {
      'name': "Darbar Hotel",
      'address': "N5, Thatta\n73130\nPakistan",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/10525583_787024167984427_6563962477317743349_n.jpg?_nc_cat=105&_nc_sid=2d5d41&_nc_ohc=57-QmabYYVoAX_fvxm7&_nc_ht=scontent.fkhi2-1.fna&oh=b75f53e1fd2368432440776fcadad19a&oe=5F2781C9",
      'call': '0321 3274399',
      'url':
          "https://www.facebook.com/pages/category/Hotel/Darbar-HOTEL-785265778160266/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Thatta Food"),
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
