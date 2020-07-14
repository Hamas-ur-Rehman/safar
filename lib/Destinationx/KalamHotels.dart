import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class KalamHotels extends StatefulWidget {
  @override
  _KalamHotelsState createState() => _KalamHotelsState();
}

class _KalamHotelsState extends State<KalamHotels> {
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

  List kalamhotels = [
    {
      'name': 'Summer\nQueen\nHotel\nKalam',
      'address':
          'Irrigation\nRest House\nRoad\nKalam\nSwat\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/187048972.jpg?k=35b6abff2c297dc2e74fac156d3b74ce6bf437ca889c05a4ebd66f03cbbfa428&o=',
      'url':
          'https://www.google.com/travel/hotels/Kalam/entity/ChoIl4WCj4ud3aq7ARoNL2cvMTFjbHljY3o4YxAB?g2lb=2502548%2C4258168%2C4260007%2C4270442%2C4274032%2C4305595%2C4306835%2C4317915%2C4319922%2C4322822%2C4328159%2C4329288%2C4364504%2C4366684%2C4371335%2C4381263%2C4386665%2C4395590%2C4398672%2C4401006%2C4270859%2C4284970%2C4291517%2C4307996%2C4356900&hl=en&gl=pk&un=1&ap=MABoAA&rp=ogEFTmFyYW5AAEgC&ictx=1&sa=X&utm_campaign=sharing&utm_medium=link&utm_source=htls&hrf=CgYI8KsBEAAiA1BLUioWCgcI5A8QBhgcEgcI5A8QBhgdGAEoALABAFgBaAGaAS4SBUthbGFtGiUweDM4ZGNlNGU0ZWRkMDU2YTk6MHgxNzllYmIxZjAwNDA5ODAwogETCgkvbS8wMWhmNnASBlRheGlsYQ',
      'price': 'PKR 8,341',
      'call': '0314 9278733',
    },
    {
      'name': 'Galaxy\nHotel\nSwat\nKalam',
      'address': 'Main\nMall\nRoad\nKalam,',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/187/187232864.jpg',
      'url':
          'https://www.google.com/travel/hotels/Kalam/entity/ChkI2KzRyv289NomGg0vZy8xMWNseWJsOTBnEAE?g2lb=2502548%2C4258168%2C4260007%2C4270442%2C4274032%2C4305595%2C4306835%2C4317915%2C4319922%2C4322822%2C4328159%2C4329288%2C4364504%2C4366684%2C4371335%2C4381263%2C4386665%2C4395590%2C4398672%2C4401006%2C4270859%2C4284970%2C4291517%2C4307996%2C4356900&hl=en&gl=pk&un=1&ap=MABoAA&rp=ogEFTmFyYW5AAEgC&ictx=1&sa=X&utm_campaign=sharing&utm_medium=link&utm_source=htls&hrf=CgYI8KsBEAAiA1BLUioWCgcI5A8QBhgcEgcI5A8QBhgdGAEoALABAFgBaAGaAS4SBUthbGFtGiUweDM4ZGNlNGU0ZWRkMDU2YTk6MHgxNzllYmIxZjAwNDA5ODAwogETCgkvbS8wMWhmNnASBlRheGlsYQ',
      'price': 'PKR 3,289',
      'call': '03149493627',
    },
    {
      'name': 'hotel\nhilton\npalace',
      'address':
          ' Mingora\nSwat\nKhyber\nPakhtunkhwa\n19200\nHāji Bāba\nPakistan ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/251/251871872.jpg',
      'url':
          'https://www.booking.com/hotel/pk/hilton-palace-mingora-swat1.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-4782790_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=640372502_266174463_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=900055706;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=640372502_266174463_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;spdest=ci%2F900055706;sr_order=popularity;sr_pri_blocks=640372502_266174463_2_1_0__1078000;srepoch=1593261894;srpvid=f9b959a21251002e;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 10,780',
      'call': '03456881617',
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
        title: Text("Kalam Hotels"),
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
        itemCount: kalamhotels.length,
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
                          '${kalamhotels[index]['imagex']}',
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
                                    '${kalamhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${kalamhotels[index]['price']}',
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
                                new Text('${kalamhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${kalamhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${kalamhotels[index]['url']}');
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
