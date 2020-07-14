import 'package:flutter/material.dart';
import 'package:safar/GMap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Details.dart';
import '../HomePage.dart';

class KaghanValleyHotels extends StatefulWidget {
  @override
  _KaghanValleyHotelsState createState() => _KaghanValleyHotelsState();
}

class _KaghanValleyHotelsState extends State<KaghanValleyHotels> {
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

  List kaghanvalleyhotels = [
    {
      'name': 'Arcadian\nRiverside',
      'address': 'Chilas Rd\nKhanian\nMansehra\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/06/bd/d4/80/arcadian-at-khanian.jpg',
      'url':
          'https://www.agoda.com/arcadian-riverside/hotel/all/naran-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=92ea0e3c-695c-413e-b267-ea790950cacd&travellerType=-1',
      'price': 'PKR 17,982',
      'call': '(051) 8436971',
    },
    {
      'name': 'Mir\nContinental\nHotel',
      'address':
          'bank square\nchattar\nmuzaffarabad\nMuzaffarabad\nAzad Jammu\nand Kashmir',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/175/175527603.jpg',
      'url':
          'https://www.booking.com/hotel/pk/mir-continental-muzaffarabad.en-gb.html?aid=2005135;label=ee3d627a-79b6-47c1-903c-2e48b9992a1e;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=445483801_181015330_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769929;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=445483801_181015330_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=445483801_181015330_2_1_0__399900;srepoch=1593245662;srpvid=e6db39efe0ac00f9;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,999',
      'call': '(058224) 32263',
    },
    {
      'name': 'Hotel\nMountain\nTrack',
      'address': 'Taranna\nBalakot\nMansehra\nKhyber\nPakhtunkhwa ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/164/164439658.jpg',
      'url':
          'https://www.booking.com/hotel/pk/mountain-track-taranna-balakot.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-4144043_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-414404301_179346192_2_2_0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=414404301_179346192_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=6125403;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=414404301_179346192_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=414404301_179346192_2_2_0__590200;srepoch=1593245823;srpvid=6aa43a3fe64c0105;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 5,902',
      'call': '(0997) 360007',
    },
    {
      'name': 'Arcadian\nSpruce\nwoods\nLuxury\nResort',
      'address': 'Shogran\nKaghan\nValley',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/10/0d/c1/0d/arcadian-sprucewoods.jpg',
      'url':
          'https://www.expedia.com/Shogran-Hotels-Arcadian-Sprucewoods.h28805061.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593245935713&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=553248635940957171&destination=Shogran%2C+Khyber+Pakhtunkhwa%2C+Pakistan&destType=MARKET&selected=28805061&sort=RECOMMENDED&top_dp=95&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-ROOMBUNDLE-desktop.HOTEL&MDPDTL=HTL.28805061.20200628.20200629.DDT.1.CID.9919993890.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgKM3jUzfuCPN_29TprpKVopVQpAhPMJu0mGaVAaOh5niN01d3g2S2caAlDLEALw_wcB&semdtl=&selectedRoomType=217821578&selectedRatePlan=272063334',
      'price': 'PKR 18,432',
      'call': '0300 9192418',
    },
    {
      'name': 'Pearl\nContinental',
      'address': 'Upper Chattar\nMuzaffarabad\nAzad Jammu\nand Kashmir',
      'imagex':
          'https://pakiholic.com/wp-content/uploads/2017/09/16-PC-Muzzafarabad-Photo-Credits-Sahrish-Sheikh.jpg',
      'url': 'https://www.pchotels.com/pcmuzaffarabad/en/rooms-and-suites.html',
      'price': 'PKR 9,999',
      'call': '(058224) 38000',
    },
    {
      'name': 'Kashmir\ncottage',
      'address':
          'Behind Fouji\nFoundation\nSchool\nNear\nShell Petrol\nPump Bala Peer\nMuzaffarabad\nAzad Jammu\nand Kashmir',
      'imagex':
          'https://www.imusafir.pk/data/frontImages/hotels/hotels_image/1411632092_perhena-cottages-naran-kaghan-4.jpg',
      'url':
          'https://www.booking.com/hotel/pk/muzaffarabad-kashmir-cottage.en-gb.html?aid=2005135;label=dee7c7b3-1ff2-4785-9582-5e16ecc30c1c;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=416030701_190746037_6_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769929;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=416030701_190746037_6_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=416030701_190746037_6_2_0__1200000;srepoch=1593246312;srpvid=4f973b3334e50112;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 12,000',
      'call': '0314 4444557',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Kaghan Valley Hotels"),
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
        itemCount: kaghanvalleyhotels.length,
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
                          '${kaghanvalleyhotels[index]['imagex']}',
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
                                    '${kaghanvalleyhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${kaghanvalleyhotels[index]['price']}',
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
                                    '${kaghanvalleyhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${kaghanvalleyhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${kaghanvalleyhotels[index]['url']}');
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
