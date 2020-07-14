import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class NaltarHotels extends StatefulWidget {
  @override
  _NaltarHotelsState createState() => _NaltarHotelsState();
}

class _NaltarHotelsState extends State<NaltarHotels> {
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
      'name': 'Gilgit Serena Hotel',
      'address': 'Brig.\nSherullah Beg\nRoad Jutial,\nGilgit 15100\nPakistan',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1280x900/183/183208971.jpg',
      'url':
          'https://reservations.serenahotels.com/74363?subchan=TRIPADVISOR_ROW2_DESKTOP&utm_medium=meta&clickid=XwRw0wokMpAAAfVKbR4AAAA6&utm_campaign=ds&utm_source=TripAdvisor&currency=USD&childage=&utm_content=TripAdvisor_74363_ROW2-DMeta_1_&dateout=10/27/20&rateplanid=2720570&hotelid=74363&roomtypeid=201686&adults=2&languageid=1&datein=10/26/2020&rooms=1#/accommodation/room',
      'price': 'PKR 22,538',
      'call': '+92 58114 55894',
    },
    {
      'name': 'Naltar Palace Hotel',
      'address': 'Lake Road,\nNaltar\nValley\n15101 Pakistan',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1280x900/203/203953999.jpg',
      'url':
          'https://www.booking.com/hotel/pk/naltar-palace.en-gb.html?aid=7344211;label=metatripad-link-dmetain-hotel-5217397_xqdz-4205f5ac0d93a7086ae358cbca5c135d_los-01_bw-111_dom-com_curr-PKR_gst-02_nrm-01_clkid-XwRxiwokHG0AAEx5hUYAAACP_aud-0000_mbl-M_pd-B_sc-2_defdate-0_spo-0_clksrc-0;all_sr_blocks=521739703_182590025_2_2_0;checkin=2020-10-26;checkout=2020-10-27;dest_id=-2763868;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=521739703_182590025_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=521739703_182590025_2_2_0__999900;srepoch=1594126743;srpvid=672c5b4bf7c200be;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 9,999',
      'call': '0355 5420240',
    },
    {
      'name': 'Gulgul Resort',
      'address': 'Karakoram\nHighway N-35,\nRahim Abad\n15100 Pakistan',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/224/224191582.jpg',
      'url':
          'https://www.booking.com/hotel/pk/gulgul-resort.en-gb.html?aid=7344211&label=metatripad-link-dmetain-hotel-5547890_xqdz-cd65d38e94ab24c491ba581abd0c1354_los-01_bw-111_dom-com_curr-PKR_gst-02_nrm-01_clkid-XwRyewokGZIAANaHLfMAAAB9_aud-0000_mbl-M_pd-B_sc-2_defdate-0_spo-0_clksrc-0&all_sr_blocks=554789002_205252341_2_2_0&checkin=2020-10-26&checkout=2020-10-27&dest_id=-2761060&dest_type=city&group_adults=2&group_children=0&hapos=1&highlighted_blocks=554789002_205252341_2_2_0&hpos=1&no_rooms=1&sr_order=popularity&sr_pri_blocks=554789002_205252341_2_2_0__250000&srepoch=1594127009&srpvid=8a255bd0bd060016&ucfs=1&from=searchresults#hotelTmpl',
      'price': 'PKR 2,500',
      'call': '0315 8377117',
    },
    {
      'name': 'Riverdale\nResort\nGilgit',
      'address': 'Adjacent\nBaseen RCC\nbridge, Gilgit\n15100 Pakistan',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/222/222256837.jpg',
      'url':
          'https://www.booking.com/hotel/pk/riverdale-resort.en-gb.html?aid=7344211;label=metatripad-link-dmetain-hotel-5680410_xqdz-cd65d38e94ab24c491ba581abd0c1354_los-01_bw-111_dom-com_curr-PKR_gst-02_nrm-01_clkid-XwRzcgokGJQAAP-DbpQAAAAR_aud-0000_mbl-M_pd-B_sc-2_defdate-0_spo-0_clksrc-0;all_sr_blocks=568041002_246526408_2_1_0;checkin=2020-10-26;checkout=2020-10-27;dest_id=-2761060;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=568041002_246526408_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=568041002_246526408_2_1_0__1500000;srepoch=1594127239;srpvid=2c6a5c4356a80094;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 15,000',
      'call': '0331 5103377',
    },
    {
      'name': 'Park Hotel',
      'address': 'Airport\nRoad,\nGilgit 15100\nPakistan',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/210/210775608.jpg',
      'url':
          'https://www.booking.com/hotel/pk/park-gilgit-gilgit.en-gb.html?aid=7344211;label=metatripad-link-dmetain-hotel-4068813_xqdz-cd65d38e94ab24c491ba581abd0c1354_los-01_bw-111_dom-com_curr-PKR_gst-02_nrm-01_clkid-XwR0FAokG2gAA1iD1xwAAACU_aud-0000_mbl-M_pd-B_sc-2_defdate-0_spo-0_clksrc-0;all_sr_blocks=406881301_179272965_2_1_0;checkin=2020-10-26;checkout=2020-10-27;dest_id=-2761060;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=406881301_179272965_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=406881301_179272965_2_1_0__850200;srepoch=1594127388;srpvid=e2c55c8e9f4300c4;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 8,502',
      'call': '03449471906',
    },
    {
      'name': 'Hotel Oasis\nInternational\nGilgit',
      'address': 'Shahra-\ne-Qaid\nAzam, Gilgit\n15100 Pakistan',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/214/214578273.jpg',
      'url':
          'https://www.booking.com/hotel/pk/oasis-gilgit-gilgit.en-gb.html?aid=7344211;label=metatripad-link-dmetain-hotel-5484453_xqdz-cd65d38e94ab24c491ba581abd0c1354_los-01_bw-111_dom-com_curr-PKR_gst-02_nrm-01_clkid-XwR1HQokGBYAAOEUKGoAAAEd_aud-0000_mbl-M_pd-B_sc-2_defdate-0_spo-0_clksrc-0;all_sr_blocks=548445302_247130476_2_2_0;checkin=2020-10-26;checkout=2020-10-27;dest_id=-2761060;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=548445302_247130476_2_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=548445302_247130476_2_2_0__999900;srepoch=1594127665;srpvid=322e5d18a23e0091;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 8,999',
      'call': '(058114) 58983',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Naltar Valley Hotels"),
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
