import 'package:flutter/material.dart';
import 'package:safar/GMap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Details.dart';
import '../HomePage.dart';

class ChitralHotels extends StatefulWidget {
  @override
  _ChitralHotelsState createState() => _ChitralHotelsState();
}

class _ChitralHotelsState extends State<ChitralHotels> {
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

  List chitralhotels = [
    {
      'name': 'Ayun\nFort Inn',
      'address': 'Kalash\nValley Rd\nAyun\nChitral\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/0b/ea/19/10/ayun-fort-inn.jpg',
      'url':
          'https://www.booking.com/hotel/pk/ayun-fort-inn-ayun.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-4216741_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=421674101_179421967_2_0_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=6085945;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=421674101_179421967_2_0_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=421674101_179421967_2_0_0__1487500;srepoch=1593248277;srpvid=ffb73f0afb010110;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 14,875',
      'call': '0344 5010602',
    },
    {
      'name': 'Destida\nBed &\nBreakfast',
      'address': 'Bumburet\nValley Bridge\nChitrāl\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/201/201861557.jpg',
      'url':
          'https://www.booking.com/hotel/pk/destida-bed-amp-breakfast-kalash-valley-chitral.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-5162927_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=516292702_179919535_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2758303;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=516292702_179919535_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;show_room=516292702;sr_order=popularity;sr_pri_blocks=516292702_179919535_2_1_0__450000;srepoch=1593248388;srpvid=de0e3f4260b10043;type=total;ucfs=1&#RD516292702',
      'price': 'PKR 4,500',
      'call': '0343 6265131',
    },
    {
      'name': 'Al Mughal\nHotel',
      'address': 'Chitral\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/199/199465990.jpg',
      'url':
          'https://www.booking.com/hotel/pk/al-mughal.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-5091275_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=509127501_175643160_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2758303;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=509127501_175643160_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;show_room=509127501;sr_order=popularity;sr_pri_blocks=509127501_175643160_2_2_0__199900;srepoch=1593248474;srpvid=87a63f6d3841000f;type=total;ucfs=1&#RD509127501',
      'price': 'PKR 1,999',
      'call': '0332 7373917',
    },
    {
      'name': 'Kalasha\nGuest\nHouse ',
      'address': 'Karakal\nKalash\nValley\nBumborate\nChitral',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/227/227209748.jpg',
      'url':
          'https://www.booking.com/hotel/pk/destida-bed-amp-breakfast-kalash-valley-chitral-chitral.en-gb.html?aid=306395;label=chitral-4QcyV3FNf9pOPY356_1G%2AAS392919663979%3Apl%3Ata%3Ap12%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atiaud-146342138470%3Akwd-11531657666%3Alp9077123%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YZVcNNsENnH02-pWD53qm9c;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=516303302_179919779_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2758303;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=3;highlighted_blocks=516303302_179919779_2_2_0;hpos=3;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=516303302_179919779_2_2_0__250000;srepoch=1593248568;srpvid=941d3f9ca0fe00f0;type=total;ucfs=1&#map_closed',
      'price': 'PKR 2,500',
      'call': '0000',
    },
    {
      'name': 'Chitral\nGuest\nHouse',
      'address':
          'Bunni Rd\nDannin\nShandur\nMastuj Road\nIn front\nOf Mighty\nTarichmir',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/203/203981822.jpg',
      'url':
          'https://www.booking.com/hotel/pk/chitral-guest-house.en-gb.html?aid=306395;label=chitral-4QcyV3FNf9pOPY356_1G%2AAS392919663979%3Apl%3Ata%3Ap12%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atiaud-146342138470%3Akwd-11531657666%3Alp9077123%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YZVcNNsENnH02-pWD53qm9c;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=521791201_182611486_2_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2758303;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=5;highlighted_blocks=521791201_182611486_2_2_0;hpos=5;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=521791201_182611486_2_2_0__630000;srepoch=1593248568;srpvid=941d3f9ca0fe00f0;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 6,300',
      'call': '0000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Chitral Hotels"),
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
        itemCount: chitralhotels.length,
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
                          '${chitralhotels[index]['imagex']}',
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
                                    '${chitralhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${chitralhotels[index]['price']}',
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
                                new Text('${chitralhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${chitralhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${chitralhotels[index]['url']}');
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
