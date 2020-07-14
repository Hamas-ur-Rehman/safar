import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class FslFood extends StatefulWidget {
  @override
  _FslFoodState createState() => _FslFoodState();
}

class _FslFoodState extends State<FslFood> {
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
      'name': "Forks N Knives Pizza Kitchen",
      'address':
          "Jaranwala Road,\n53 Kohinoor City,\nFaisalabad\n38000 Pakistan",
      'imagex':
          "https://profiles.pk/wp-content/uploads/2018/01/13939599_986515818161658_3835915402661621637_n.jpg",
      'call': '+92 41 111 656 565',
      'url': "http://fnkpizzakitchen.com/",
    },
    {
      'name': "Bundoo Khan",
      'address': "Jaranwala Road,\nFaisalabad\n38000 Pakistan",
      'imagex': "https://i.ytimg.com/vi/m9qNFFIq9ME/maxresdefault.jpg",
      'call': '+92 333 1692493',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g304030-d8713842-Reviews-Bundoo_Khan-Faisalabad_Punjab_Province.html",
    },
    {
      'name': "Baba Tikka Shop",
      'address': "D Ground,\nPeoples Colony 1,\nFaisalabad\nPakistan",
      'imagex':
          "https://faisalabadinfo.com/wp-content/uploads/2020/06/Baba-Tikka-Desi-Food-Resturant-in-Faisalabad.jpg",
      'call': '+92 41 8555110',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g304030-d8533368-Reviews-Baba_Tikka_Shop-Faisalabad_Punjab_Province.html",
    },
    {
      'name': "Sam Fried Chicken & Burgers",
      'address': "D Ground,\nFaisalabad\n38000 Pakistan",
      'imagex':
          "https://pk.enrollbusiness.com/BusinessImageThumbnails/75411_sams-dground.jpg",
      'call': '+92 41 8547512',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g304030-d10029173-Reviews-Sam_Fried_Chicken_Burgers-Faisalabad_Punjab_Province.html",
    },
    {
      'name': "Hardees",
      'address': "Gate Way\nTowers,\nFaisalabad\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0f/76/fb/52/photo0jpg.jpg",
      'call': '+92 42 111 200 400',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g304030-d8589924-Reviews-Hardees-Faisalabad_Punjab_Province.html",
    },
    {
      'name': "Nando's",
      'address': "53 Kohinoor\nTown, Faisalabad\nPakistan",
      'imagex':
          "https://media-cdn.tripadvisor.com/media/photo-s/0e/2f/d3/fd/faisalabad.jpg",
      'call': '+92 335 1333632',
      'url':
          "https://www.tripadvisor.com/Restaurant_Review-g304030-d12049860-Reviews-Nando_s-Faisalabad_Punjab_Province.html",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Faisalabad Food"),
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
