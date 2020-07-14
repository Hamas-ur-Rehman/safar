import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class MalamjabaHotels extends StatefulWidget {
  @override
  _MalamjabaHotelsState createState() => _MalamjabaHotelsState();
}

class _MalamjabaHotelsState extends State<MalamjabaHotels> {
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
      'name': 'Green\nPalace\nGuest\nHouse\nMalam Jabba',
      'address': 'Main\nMallam\nJabba Road،\nSwat,\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://images.trvl-media.com/hotels/39000000/38170000/38164000/38163913/d7e88f67.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium',
      'url':
          'https://www.expedia.com/Malam-Jabba-Hotels-Green-Palace-Guest-House-MalamJabba-SWAT.h38163913.Hotel-Information?chkin=2020-03-12&chkout=2020-03-13&x_pwa=1&rfrr=HSR&pwa_ts=1583929294378&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&swpToggleOn=true&rm1=a2&regionId=3000476786&destination=Malam+Jabba,+Khyber+Pakhtunkhwa,+Pakistan&destType=CURRENT_LOCATION&selected=38163913&sort=price',
      'price': 'PKR 2,649',
      'call': '+60 11-1609 0810',
    },
    {
      'name': 'Green Palace\nHotel Malam\njabba',
      'address': 'Malam Jabba\nRd, Malam\nJabba,\nSwat, Khyber\nPakhtunkhwa',
      'imagex':
          'https://scontent.fkhi2-1.fna.fbcdn.net/v/t1.0-9/65142857_2541365955901832_8246876918205382656_o.jpg?_nc_cat=101&_nc_sid=8bfeb9&_nc_ohc=UY0XTRy4hkkAX_iaUa9&_nc_ht=scontent.fkhi2-1.fna&oh=68060bf02a1786f0e70ccecb76ceb163&oe=5F273475',
      'url':
          'https://www.facebook.com/Hotel.in.Kalam/photos/pcb.2541367009235060/2541365942568500',
      'price': 'PKR 4,076',
      'call': '0312 8724783',
    },
    {
      'name': 'Pearl Continental\nHotel Malam\nJabba',
      'address': 'Malam Jabba\nRd, Malam\nJabba,\nSwat, Khyber\nPakhtunkhwa',
      'imagex':
          'https://i0.wp.com/www.globalvillagespace.com/wp-content/uploads/2020/03/Malam-Jabba-PC-Hotel-Mountain-Ski-Resort-is-open-for-business.jpg',
      'url': 'https://www.pchotels.com/',
      'price': 'PKR 15,127',
      'call': '(0946) 111 505 505',
    },
    {
      'name': 'Swat\nView Hotel',
      'address':
          'kalam road\nfizagat\nsangota\nswat 1 Km\nAhead\nFrom Swat\nHigh Court\nFizagat\nSwat',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/0e/98/91/3d/swat-view-hotel.jpg',
      'url': 'http://www.swatviewhotel.com.pk/',
      'price': 'PKR 5,500',
      'call': '0344 1099501',
    },
    {
      'name': 'Serena Hotel',
      'address': 'Officers\nColony Rd\nSaidu Sharif\nSwat\nKhybe\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/08/e0/d7/92/swat-serena-hotel.jpg',
      'url': 'https://www.serenahotels.com/serenaswat/en/default.html',
      'price': 'PKR 12,506',
      'call': '(0946) 711637',
    },
    {
      'name': "Shelton's\nRezidort",
      'address': 'Mingora\nSwat\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://images.trvl-media.com/hotels/28000000/27120000/27115200/27115117/cc99d9ea_z.jpg',
      'url': 'https://www.tmhotels.com/book-now/',
      'price': 'PKR 16,691',
      'call': '(0946) 813006',
    },
    {
      'name': 'Rock City Resort',
      'address': 'N-95, Swat\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://a0.muscache.com/pictures/18bae0e2-5167-4758-b013-abd7b95d579c.jpg',
      'url': 'http://www.rockcityresort.com/roomcategory/rooms/',
      'price': 'PKR 9,000',
      'call': '0301 3612000',
    },
    {
      'name': 'Hotel\nSwat\nRegency',
      'address': 'Airport Rd\nMingora\nSwat\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://www.imusafir.pk/data/frontImages/hotels/hotels_image/1451488516_hotel-swat-regency-Exterior.jpg',
      'url':
          'https://www.tripadvisor.com/Hotel_Review-g1652425-d8639215-Reviews-Hotel_Swat_Regency-Mingora_Khyber_Pakhtunkhwa_Province.html',
      'price': 'PKR 14,389',
      'call': '(0946) 816444',
    },
    {
      'name': 'Green\nPalace\nGuest\nHouse',
      'address': 'Main Malam\nJabba Road\nMalam Jabba\n75100 Pakistan',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-m/1280/15/6b/93/0c/green-valley-malam-jabba.jpg',
      'url':
          'https://www.tripadvisor.com/Hotel_Review-g7746392-d10151089-Reviews-Green_Palace_Guest_House-Malam_Jabba_Khyber_Pakhtunkhwa_Province.html',
      'price': 'PKR 1,919',
      'call': '0331 3966655',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Malam Jaba Hotels"),
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
