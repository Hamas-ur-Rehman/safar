import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class PeshawarHotels extends StatefulWidget {
  @override
  _PeshawarHotelsState createState() => _PeshawarHotelsState();
}

class _PeshawarHotelsState extends State<PeshawarHotels> {
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

  List peshawarhotels = [
    {
      'name': 'VIP House',
      'address': 'Old Bara Rd\nUniversity\nTown\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/132/132701779.jpg',
      'url':
          'https://www.booking.com/hotel/pk/vip-house.en-gb.html?aid=1213432;label=seogooglelocal-link-imagesaow-hotel-1608791_grp-3_gendate-20200501;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=160879102_187133299_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2771364;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=160879102_187133299_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=160879102_187133299_2_1_0__450000;srepoch=1593243456;srpvid=912435a09c65014e;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 4,500',
      'call': '(091) 5843392',
    },
    {
      'name': "Shelton's\nRezidor",
      'address':
          'University\nRoad Near\nto KFC، opp\nTotal Parco\nTahkal\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/709/70942584.jpg',
      'url':
          'https://www.booking.com/hotel/pk/shelton-39-s-rezidor-house.en-gb.html?aid=356980;label=gog235jc-1FCAsotQFCFHNoZWx0b24tMzktcy1yZXppZG9ySAlYA2i1AYgBAZgBCbgBGMgBDNgBAegBAfgBAogCAagCBLgC0e_b9wXAAgHSAiQwMTQ1YTcwYy1lYzI2LTQ3MzYtYTYwOC04ZWZkMzEzYzg3NDXYAgXgAgE;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=609638902_238716981_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2771364;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=4;highlighted_blocks=609638902_238716981_2_1_0;hpos=4;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=609638902_238716981_2_1_0__650000;srepoch=1593243602;srpvid=0ac935e8911b01a5;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 6,500',
      'call': '(091) 5701201',
    },
    {
      'name': 'Pearl\nContinental',
      'address':
          'Khyber Rd\nPeshawar\nGolf Club\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://www.jaghajagha.com/gallery.imgs/1706308081738jagha-pcpeshawar%205.jpg',
      'url':
          'https://www.expedia.com/Peshawar-Hotels-Pearl-Continental-Peshawar.h178724.Hotel-Information?mrp=0&langid=1033&clickref=1100l9pHbzAS&affcid=US.DIRECT.PHG.1101l32628.0&afflid=1100l9pHbzAS&chkin=6/28/2020&chkout=6/29/2020&rateplanid=206133743_24&rm1=a2&paandi=true',
      'price': 'PKR 13,489',
      'call': '(091) 111 505 505',
    },
    {
      'name': 'Amin\nHotel',
      'address':
          'BRT Bus\nStation\nHashtnagri\nZaryab Colony\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/257/257926189.jpg',
      'url':
          'https://www.booking.com/hotel/pk/amin-peshawar.en-gb.html?aid=2005135;label=9134a348-4cd2-4576-b9bf-71a5bd126df7;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=573402604_242656809_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2771364;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=573402604_242656809_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=573402604_242656809_2_1_0__265023;srepoch=1593244067;srpvid=95ff36d18bad0175;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 2,650',
      'call': '(091) 111 091 111',
    },
    {
      'name': 'Fort\nContinental',
      'address':
          'Firdos Chowk\nGrand Trunk Rd\nHashtnagri\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/216/216549713.jpg',
      'url':
          'https://www.booking.com/hotel/pk/fort-continental-peshawar.en-gb.html?aid=2005135;label=52d52810-86e0-44e5-8623-08dfc032c017;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=552705702_204546890_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2771364;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=552705702_204546890_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=552705702_204546890_2_2_0__792000;srepoch=1593244240;srpvid=3f213728e9180153;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,920',
      'call': '(091) 2552201',
    },
    {
      'name': 'Shelton\nAccommodator',
      'address':
          'Rehman\nBaba Rd\nUniversity Town\nPeshawar\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/941/94156056.jpg',
      'url':
          'https://www.booking.com/hotel/pk/shelton-accommodator.en-gb.html?aid=2005135;label=e9404b01-10f1-42b4-ad83-ba145756b97b;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=228177206_101534731_0_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2771364;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=228177206_101534731_0_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=228177206_101534731_0_1_0__400000;srepoch=1593244413;srpvid=ee90377eb86a01b5;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 4,000',
      'call': '(091) 5846627',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Peshawar Hotels"),
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
        itemCount: peshawarhotels.length,
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
                          '${peshawarhotels[index]['imagex']}',
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
                                    '${peshawarhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${peshawarhotels[index]['price']}',
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
                                new Text('${peshawarhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${peshawarhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${peshawarhotels[index]['url']}');
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
