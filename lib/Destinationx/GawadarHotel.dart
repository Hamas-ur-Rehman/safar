import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class GawadarHotels extends StatefulWidget {
  @override
  _GawadarHotelsState createState() => _GawadarHotelsState();
}

class _GawadarHotelsState extends State<GawadarHotels> {
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

  List abbottabadhotels = [
    {
      'name': 'Pearl-Continental\nGwadar',
      'address':
          'Hotel Building\nMauza, Ward\nKoh E-Batil,\nTehsil and\nDistt, Gwadar\n91200 Pakistan',
      'imagex':
          'https://aaapartnership.com/wp-content/uploads/2017/04/pcgwadar-2.jpg',
      'url':
          'https://reservations.travelclick.com/99637?subchan=TRIPADVISOR_ROW2_DESKTOP&utm_medium=meta&clickid=Xwqe2AokL4IABDzwBxIAAAAd&utm_campaign=ds&utm_source=TripAdvisor&currency=USD&childage=&utm_content=TripAdvisor_99637_ROW2-DMeta_1_&dateout=12/24/20&rateplanid=1991877&hotelid=99637&roomtypeid=418841&adults=2&languageid=1&datein=12/23/2020&rooms=1#/accommodation/room',
      'price': 'PKR 19,973',
      'call': '(086) 4212223',
    },
    {
      'name': 'Sadaf Resort',
      'address':
          'RCDC Club\nStreet, Fish\nHarbor Road,\nGwadar 91200\nPakistan',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/161/161322476.jpg',
      'url':
          'https://www.agoda.com/sadaf-resort/hotel/all/gwadar-pk.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1662615&tag=hid6724566,pidXwqfgAokJSAABCQtDVgAAACo&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-12-15&childAges=&defaultChildAge=8&travellerType=-1&los=1&searchrequestid=b88f618e-db04-4a78-9b94-badca4a354b8',
      'price': 'PKR 7,892',
      'call': '(086) 4211457',
    },
    {
      'name': 'Gwadar Tourist Motel',
      'address': 'Gwadar\nGovernor Rest\nHouse Road,\nGwadar\nPakistan',
      'imagex':
          'https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/101284231_101187938295172_1535709618754289664_o.jpg?_nc_cat=104&_nc_sid=dd9801&_nc_ohc=MlN25QKXmqoAX9zJbMi&_nc_ht=scontent.fkhi2-1.fna&oh=bf7898e05c5a3613474567ba558d22fb&oe=5F31A369',
      'url':
          'https://www.facebook.com/pages/category/Hotel/Gwadar-Tourist-Motel-Gwadar-Bakhshi-Hotel-101186948295271/',
      'price': 'PKR 5,789',
      'call': '0334 5601661',
    },
    {
      'name': 'Sahil Guest House',
      'address': 'Airport\nRoad, Gwadar\nPakistan',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-c/2560x500/0e/6d/5e/69/photo5jpg.jpg',
      'url':
          'https://www.facebook.com/pages/category/Beach-Resort/Gwadar-BEACH-GUEST-HOUSE-281767675986419/',
      'price': 'PKR 8,954',
      'call': '0322 3954655',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Gawadar Hotels"),
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
                Icons.all_inclusive,
                color: Colors.black,
              ),
              title: Text("Details", style: TextStyle(color: Colors.grey))),
          // new BottomNavigationBarItem(icon: new Icon(Icons.favorite,color: Colors.black,),title: Text("Favorite",style: TextStyle(color: Colors.grey)),),
        ],
        onTap: _onTap,
      ),
      body: new ListView.builder(
        itemCount: abbottabadhotels.length,
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
                      child: new Image.network(
                          '${abbottabadhotels[index]['imagex']}',
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
                                      '${abbottabadhotels[index]['name']}'
                                          .toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ),
                                new Text(
                                  '${abbottabadhotels[index]['price']}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            new SizedBox(height: 10.0),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                    '${abbottabadhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${abbottabadhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${abbottabadhotels[index]['url']}');
                                      },
                                      icon: Icon(Icons.access_time),
                                      label: Text("Booking"),
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
