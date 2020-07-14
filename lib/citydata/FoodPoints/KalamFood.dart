import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class KalamFood extends StatefulWidget {
  @override
  _KalamFoodState createState() => _KalamFoodState();
}

class _KalamFoodState extends State<KalamFood> {
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
      'name': "Kalam View",
      'address': "Buyun,\nBoyūn, Swat,\nKhyber\nPakhtunkhwa",
      'imagex':
          "https://i.pinimg.com/originals/f3/5b/1c/f35b1c88adf5f24af3ecbe255e682882.jpg",
      'call': '0',
      'url':
          "https://www.google.com/search?safe=active&hl=en&biw=1455&bih=961&sxsrf=ALeKk03g2K0-pLlK2m61jGHRmW4CVHMR0w:1593693499367&q=food%20places%20in%20kalam&npsic=0&rflfq=1&rlha=0&rllag=35475929,72597141,551&tbm=lcl&ved=2ahUKEwjrhKT3yq7qAhUNzIUKHb2sCwQQjGp6BAgLED4&rldoc=1&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!1m4!1u16!2m2!16m1!1e1!1m4!1u16!2m2!16m1!1e2!2m1!1e2!2m1!1e16!2m1!1e3!3sIAE,lf:1,lf_ui:9&rlst=f#rlfi=hd:;si:;mv:[[36.003777299999996,73.5696942],[33.4770295,71.6880272]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!1m4!1u16!2m2!16m1!1e1!1m4!1u16!2m2!16m1!1e2!2m1!1e2!2m1!1e16!2m1!1e3!3sIAE,lf:1,lf_ui:9",
    },
    {
      'name': "Ali Hotel",
      'address': "Kalam,\nSwat, Khyber\nPakhtunkhwa",
      'imagex':
          "https://swatvalley.pk/wp-content/uploads/2018/07/swat-continental-hotel-arrange-bbq-lunch-at-mahodand-and-kalam-valley-to-bosch-p.jpg",
      'call': '0313 9515601',
      'url':
          "https://www.google.com/search?safe=active&hl=en&biw=1455&bih=961&sxsrf=ALeKk03g2K0-pLlK2m61jGHRmW4CVHMR0w:1593693499367&q=food%20places%20in%20kalam&npsic=0&rflfq=1&rlha=0&rllag=35475929,72597141,551&tbm=lcl&ved=2ahUKEwjrhKT3yq7qAhUNzIUKHb2sCwQQjGp6BAgLED4&rldoc=1&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!1m4!1u16!2m2!16m1!1e1!1m4!1u16!2m2!16m1!1e2!2m1!1e2!2m1!1e16!2m1!1e3!3sIAE,lf:1,lf_ui:9&rlst=f#rlfi=hd:;si:1527068182273492320,l,ChRmb29kIHBsYWNlcyBpbiBrYWxhbVojCgtmb29kIHBsYWNlcyIUZm9vZCBwbGFjZXMgaW4ga2FsYW0,y,ThfC8ztSdW0;mv:[[36.003777299999996,73.5696942],[33.4770295,71.6880272]]",
    },
    {
      'name': "Aroma Restaurant Kalam",
      'address': "Kalam,\nSwat, Khyber\nPakhtunkhwa",
      'imagex':
          "https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-0/p180x540/68388898_2116400245326893_1727091836750659584_o.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_ohc=b58rqpgnLBgAX9ycrST&_nc_ht=scontent.fkhi2-1.fna&_nc_tp=6&oh=2912265d6c855fa73a793bb13c02ce3b&oe=5F2356EF",
      'call': '03149703835',
      'url': "https://www.facebook.com/AromaKalam/",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Kalam Food"),
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
