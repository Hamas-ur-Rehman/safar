import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class FaisalabadHotels extends StatefulWidget {
  @override
  _FaisalabadHotelsState createState() => _FaisalabadHotelsState();
}

class _FaisalabadHotelsState extends State<FaisalabadHotels> {
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

  List faisalabadhotels = [
    {
      'name': 'Babar\nHouse',
      'address':
          'Susan Rd\nmuhammadi\ncolony\nMadina Town\nFaisalabad\nPunjab ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/109/109878148.jpg',
      'url':
          'https://www.booking.com/hotel/pk/babar-house.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2549896_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=254989601_112250098_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2759985;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=254989601_112250098_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=254989601_112250098_2_1_0__250000;srepoch=1593274207;srpvid=0cbe71afdba0013e;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 2,500',
      'call': '0321 9666811',
    },
    {
      'name': 'Hotel One',
      'address': "Block C\nPeople's\nColony No 1\nFaisalabad\nPunjab",
      'imagex':
          'https://lh3.googleusercontent.com/proxy/Uy1jjLy-a9BWQg2ruxmMJYccqnnXCvf6sXhKpxnSRy9i4HjsgB6w-GFuc1Pw_T346Qswuhu8KTsTIQPLCQh6t81VEJ1mg_-SXHnO339OYNGW--T_',
      'url':
          'https://www.booking.com/hotel/pk/one-faisalabad.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-416447_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=41644701_248999810_0_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2759985;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=41644701_248999810_0_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=41644701_248999810_0_1_0__729900;srepoch=1593274341;srpvid=07c071f2c9e801c8;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,299',
      'call': '0341 2201111',
    },
    {
      'name': 'Faisalabad\nSerena\nHotel',
      'address': 'Club Rd,\nCivil Lines\nFaisalabad\nPunjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/183/183067061.jpg',
      'url':
          'https://www.booking.com/hotel/pk/faisalabad-serena.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-1097107_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=109710712_229884375_0_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2759985;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=109710712_229884375_0_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=109710712_229884375_0_1_0__9000;srepoch=1593274456;srpvid=3c15722bbc790232;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 15,071',
      'call': '(041) 111 133 133',
    },
    {
      'name': 'Khayyam\nHotel',
      'address': 'Jail Rd\nAkbarabad\nFaisalabad\nPunjab ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/124/124398016.jpg',
      'url':
          'https://www.booking.com/hotel/pk/khayyam.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2977372_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=297737201_124176577_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2759985;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=297737201_124176577_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=297737201_124176577_2_1_0__350000;srepoch=1593274574;srpvid=14a37266eedc0072;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,500',
      'call': '0321 7926562',
    },
    {
      'name': 'Avari\nXpress\nHotel',
      'address': '12C Jaranwala\nRd, Kohinoor\nCity\nFaisalabad\nPunjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/107/107589975.jpg',
      'url':
          'https://www.booking.com/hotel/pk/avari-xpress-faisalabad.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2576955_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=257695501_247172201_0_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2759985;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=257695501_247172201_0_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=257695501_247172201_0_1_0__790000;srepoch=1593274673;srpvid=66587298fec3001f;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,900',
      'call': '(041) 8535302',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Faisalabad Hotels"),
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
        itemCount: faisalabadhotels.length,
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
                          '${faisalabadhotels[index]['imagex']}',
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
                                    '${faisalabadhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${faisalabadhotels[index]['price']}',
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
                                    '${faisalabadhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${faisalabadhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${faisalabadhotels[index]['url']}');
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
