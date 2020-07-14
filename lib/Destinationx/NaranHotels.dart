import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class NaranHotels extends StatefulWidget {
  @override
  _NaranHotelsState createState() => _NaranHotelsState();
}

class _NaranHotelsState extends State<NaranHotels> {
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

  List naranhotels = [
    {
      'name': 'Arcadian\nRiverside',
      'address': 'Chilas Rd\nKhanian\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/144/144226369.jpg',
      'url':
          'https://www.agoda.com/arcadian-riverside/hotel/all/naran-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=e7faeaff-64dc-45e9-9ff3-4486e481aca1&travellerType=-1',
      'price': 'PKR 20,859',
      'call': '(051) 8436971',
    },
    {
      'name': 'Rose\nValley',
      'address':
          'Jheel Saif\nul Malook\nRoad\nKatha, Naran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://seepakistantours.com/wp-content/uploads/2018/01/Rose-Valley-Hotel-Naran-10.jpg',
      'url':
          'https://www.agoda.com/rose-valley-hotel/hotel/all/naran-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=3961a4e7-e218-4763-ba29-76d56459578a&travellerType=-1',
      'price': 'PKR 6,844',
      'call': '0306 5702572',
    },
    {
      'name': 'Pine Top\nHotel',
      'address': 'Main Bazar\nNaran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/0e/e7/2e/08/getlstd-property-photo.jpg',
      'url': 'https://www.pinetophotels.com/naran/',
      'price': 'PKR 7,000',
      'call': '0333 5136062',
    },
    {
      'name': 'Swiss\nWood\nCottages',
      'address': 'Naran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://tourmypakistan.com.pk/wp-content/uploads/2019/01/Swiss-Wood-Cottages-photos-Exterior-Swiss-Wood-Cottages-18.jpeg',
      'url':
          'https://www.agoda.com/swiss-wood-cottages/hotel/all/naran-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1844104&searchrequestid=067ab66a-f250-429b-9d09-8ea542842092&travellerType=-1',
      'price': 'PKR 7,000',
      'call': '(0997) 430208',
    },
    {
      'name': 'Hotel\nOne',
      'address': 'Main by\npass road\nNaran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex': 'https://www.hotelone.com.pk/uploads/blog/blog__30256.jpg',
      'url':
          'https://securereservation.org/hotelv2/availability_old.php?hotel_id=10615&checkin=06/28/2020&checkout=06/29/2020&utm_campaign=HotelAds&utm_medium=GHPA&popup_datepicker=true&gclid=Cj0KCQjwudb3BRC9ARIsAEa-vUvuma0wnWoBqBX6mweMSXxpnI52D2_F0UJkxReaXN6bbF7QNVF_zyUaAhX5EALw_wcB',
      'price': 'PKR 16,999',
      'call': '0341 2201111',
    },
    {
      'name': 'Millennium\nInn',
      'address': 'PTDC, Near\nMain Bazar\nNaran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://seepakistantours.com/wp-content/uploads/2018/01/Millennium-Inn-Hotel-Naran-9.jpg',
      'url': 'http://www.millenniuminn.com.pk/reservations.php',
      'price': 'PKR 10,000',
      'call': '0343 9111804',
    },
    {
      'name': 'Al Hamrah',
      'address': 'Katha\nNaran\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://i0.wp.com/allpkhotels.com/wp-content/uploads/2018/12/al-hamrah-hotel-naran-7.jpg',
      'url':
          'https://www.booking.com/hotel/pk/al-hamrah.en-gb.html?aid=2005135;label=650fac63-91f0-4bae-932a-23f333dce912;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=410744701_179309921_2_0_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2770204;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=410744701_179309921_2_0_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=410744701_179309921_2_0_0__899900;srepoch=1593236270;srpvid=c7fd2797c54e00a8;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 8,999',
      'call': '(0997) 430061',
    },
  ];

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      throw 'cant open url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Naran Hotels"),
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
        itemCount: naranhotels.length,
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
                          '${naranhotels[index]['imagex']}',
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
                                    '${naranhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${naranhotels[index]['price']}',
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
                                new Text('${naranhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${naranhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${naranhotels[index]['url']}');
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
