import 'package:flutter/material.dart';
import 'package:safar/GMap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Details.dart';
import '../HomePage.dart';

class IslamabadHotels extends StatefulWidget {
  @override
  _IslamabadHotelsState createState() => _IslamabadHotelsState();
}

class _IslamabadHotelsState extends State<IslamabadHotels> {
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

  List islamabadhotels = [
    {
      'name': 'Hotel de\nPapáe',
      'address':
          '16-D, West\nService Rd\nG 6/2 Blue Area\nIslamabad\nCapital\nTerritory',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/194/194964591.jpg',
      'url':
          'https://www.agoda.com/hotel-de-papae/hotel/islamabad-pk.html?checkIn=2020-06-28&los=1&adults=1&rooms=1&cid=1731113&searchrequestid=8142df5e-8522-422d-a25d-7a0e7822856e&travellerType=-1',
      'price': 'PKR 9,809',
      'call': '(051) 2273427',
    },
    {
      'name': 'Hotel DE\nPalazzo',
      'address':
          'Street 70\nmarkaz MPCHS\nE 11/3\nE-11,Islamabad\nCapital\nTerritory',
      'imagex':
          'https://dimg04.c-ctrip.com/images/2204180000014iq7i3EB8_R_1136_750_R5_D.jpg',
      'url':
          'https://www.agoda.com/hotel-de-palazzo_2/hotel/islamabad-pk.html?checkIn=2020-06-28&los=1&adults=1&rooms=1&cid=1731113&searchrequestid=dda7fae6-d82b-405f-a383-643c49d0c780&travellerType=-1',
      'price': 'PKR 6,097',
      'call': '051) 2375122',
    },
    {
      'name': 'Serena Hotel',
      'address':
          'Khayaban-e\n-Suhrwardy\nopposite\nConvention\nCentre، G-5/1 G-5\nIslamabad\nCapital\nTerritory',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/183/183065428.jpg',
      'url':
          'https://www.booking.com/hotel/pk/islamabad-serena-islamabad.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-1068102_dev-desktop_los-1_bw-2_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-1_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=106810201_198480381_0_41_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2762812;dest_type=city;dist=0;group_adults=1;group_children=0;hapos=1;highlighted_blocks=106810201_198480381_0_41_0;hpos=1;no_rooms=1;req_adults=1;req_children=0;room1=A%2C;sb_price_type=total;sr_order=popularity;sr_pri_blocks=106810201_198480381_0_41_0__15000;srepoch=1593197530;srpvid=4ebd84acd4460091;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,889',
      'call': '(051) 2874000',
    },
    {
      'name': 'Ramada',
      'address':
          'Pl1 ,Club\nRoad Adjacent\nRawalLake\nShakar Parian\nIslamabad\nCapital\nTerritory',
      'imagex':
          'https://lh3.googleusercontent.com/proxy/45GSIFfStCH9nxDcnwEF-Axn72rsf0XFWdYkzqwnXRM5omIbR3wbCqXjUBeBXV9E2t-qLgapNUPzoUxWqUugm_2cUma2DETdcXajTD6CASIr-CSfztpvxaKMvxL82d05QgNnfQXJJ3LdcvIkuT-c1FXCjV6tKm4T1pNSkH_hY6NH8pUitc_H',
      'url':
          'https://www.agoda.com/ramada-islamabad/hotel/islamabad-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=dacc385f-478e-4648-a5b3-004c33d2f713&travellerType=-1',
      'price': 'PKR 10,861',
      'call': '(051) 111 379 379',
    },
    {
      'name': 'Marriot\nhotel',
      'address':
          'Agha Khan Rd\nF-5/1 Shalimar 5\nIslamabad\nIslamabad\nCapital\nTerritory ',
      'imagex':
          'https://pix10.agoda.net/hotelImages/5061463/0/5fb56ba8b332837df765900f92678294.jpg?s=1024x768',
      'url':
          'https://www.marriott.com/reservation/rateListMenu.mi?defaultTab=dealsAndPackages',
      'price': 'PKR 29,450',
      'call': '(051) 2826121',
    },
    {
      'name': 'Livin Hub\nGuest House',
      'address':
          'House no، 68-A\nNazim-ud-din Rd\nopposite\nCenturus Mall\nF-8/4 F 8/4 F-8\nIslamabad\nCapital\nTerritory',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/239/239643886.jpg',
      'url':
          'https://www.agoda.com/livin-hub-guest-house/hotel/islamabad-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=5c5e4274-5080-4bc0-8bb0-a1470a6e95ee&travellerType=-1',
      'price': 'PKR 1,989',
      'call': '0342 2122224',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Islamabad Hotels"),
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
        ],
        onTap: _onTap,
      ),
      body: new ListView.builder(
        itemCount: islamabadhotels.length,
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
                          '${islamabadhotels[index]['imagex']}',
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
                                    '${islamabadhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${islamabadhotels[index]['price']}',
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
                                new Text('${islamabadhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${islamabadhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${islamabadhotels[index]['url']}');
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
