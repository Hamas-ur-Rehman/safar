import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class QuettaHotels extends StatefulWidget {
  @override
  _QuettaHotelsState createState() => _QuettaHotelsState();
}

class _QuettaHotelsState extends State<QuettaHotels> {
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

  List quettahotels = [
    {
      'name': 'Serena\nHotel\nQuetta',
      'address': 'Shahrah-e،\nZarghun\nRoad,\nQuetta\nBalochistan',
      'imagex':
          'https://www.bexpress.com.pk/wp-content/uploads/2019/03/sareena-hote-quetta.jpg',
      'url':
          'https://www.expedia.com/Quetta-Hotels-Quetta-Serena-Hotel.h3837217.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593264889218&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=3614&destination=Quetta%2C+Balochistan%2C+Pakistan&destType=MARKET&selected=3837217&sort=RECOMMENDED&top_dp=111&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.3837217.20200628.20200629.DDT.1.CID.9919993890.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgK-xuYmYHKnTpxJmQMFNCkQtMIuhkn4Jp4W25oKZEqdCP7RixEcT6UaAn2HEALw_wcB&semdtl=&selectedRoomType=202166957&selectedRatePlan=211100494',
      'price': 'PKR 21,602',
      'call': '(081) 2820073',
    },
    {
      'name': 'Zulfiqar\nHotel',
      'address': 'Prince Rd\nQuetta\nBalochistan',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/225/225323841.jpg',
      'url':
          'https://www.agoda.com/zulfiqar-hotel/hotel/all/quetta-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=49832f6d-2688-4235-a74d-f43968a21885&travellerType=-1&tspTypes=1',
      'price': 'PKR 1,364',
      'call': '(081) 2822720',
    },
    {
      'name': 'Hotel\nQasr e\nGul',
      'address': 'Suraj\nGanj\nBazaar\nBohra Gali\nQuetta\nBalochistan',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/214/214745898.jpg',
      'url':
          'https://www.booking.com/hotel/pk/qasr-e-gul.en-gb.html?aid=2005135;label=1f923fce-f044-4c4c-8669-83d58aa602d4;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=548904601_245875571_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2772048;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=548904601_245875571_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=548904601_245875571_2_2_0__739900;srepoch=1593265173;srpvid=0ccc600ab1170086;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,399',
      'call': '(081) 2825192',
    },
    {
      'name': 'Lourdes\nHotel',
      'address': 'Shahrah-e-\nStaff\nCollege\nQuetta\nBalochistan',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/203/203022055.jpg',
      'url':
          'https://www.booking.com/hotel/pk/lourdes.en-gb.html?aid=2005135;label=1f923fce-f044-4c4c-8669-83d58aa602d4;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=519270301_182032551_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2772048;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=3;highlighted_blocks=519270301_182032551_2_1_0;hpos=3;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=519270301_182032551_2_1_0__849900;srepoch=1593265173;srpvid=0ccc600ab1170086;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 8,499',
      'call': '(081) 2829656',
    },
    {
      'name': 'Jan\nluxury\nhotel',
      'address': 'Faiz\nMuhammad Rd\nQuetta\nBalochistan ',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/218/218121114.jpg',
      'url': 'https://www.facebook.com/JanLuxuryHotel/',
      'price': 'PKR 7,585',
      'call': '(081) 2875500',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Quetta Hotels"),
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
        itemCount: quettahotels.length,
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
                          '${quettahotels[index]['imagex']}',
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
                                    '${quettahotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${quettahotels[index]['price']}',
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
                                new Text('${quettahotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${quettahotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${quettahotels[index]['url']}');
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
