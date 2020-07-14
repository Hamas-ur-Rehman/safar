import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class LahoreHotels extends StatefulWidget {
  @override
  _LahoreHotelsState createState() => _LahoreHotelsState();
}

class _LahoreHotelsState extends State<LahoreHotels> {
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

  List lahorehotels = [
    {
      'name': 'Pearl Continental Hotel',
      'address': 'Mall Rd\nG.O.R.-I\nLahore,Punjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/562/56216134.jpg',
      'url':
          'https://reservations.travelclick.com/99645?dateIN=06/28/2020&nights=1&adults=2&hotelID=99645&rateplanID=3356779&roomtypeID=418639&subchan=GOOGLE_PK_desktop_CPA&currency=PKR&utm_source=googleha&utm_medium=meta&utm_content=HPA_99645_localuniversal_1_PK_desktop_2020-06-28_default_9090959734_&children=0&languageid=en&gdp=hotelfinder&utm_campaign=ds#/accommodation/room',
      'price': 'PKR 14,791',
      'call': '(042) 111 505 505',
    },
    {
      'name': 'Nishat\nHotel',
      'address':
          'Adjacent to \nEmporium Mall\nMain AbdulHaque \nRd Commercial \nArea Phase2 Johar \nTown Lahore\nPunjab 54600',
      'imagex':
          'https://www.citysearch.pk/UF/Companies/5703/the-nishat-hotel.png',
      'url': 'https://nishathotels.jt.crewlogix.com/',
      'price': 'PKR 11,000',
      'call': '(042) 111 646 835',
    },
    {
      'name': 'Holiday Inn Suites',
      'address': 'Sector B Sector \nC DHA Phase 6\nLahore,Punjab\n54000',
      'imagex':
          'https://pix6.agoda.net/hotelImages/6987623/0/caba233a91b5bae69ea1d722b7733ed5.jpg?s=1024x768',
      'url': 'https://holidayinnsuite.com/rooms-suites',
      'price': 'PKR 7,000',
      'call': '03214166664',
    },
    {
      'name': 'Luxus Grand Hotel',
      'address': '4 Egerton Rd\nGarhi Shahu\nLahore Punjab\n54000',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1280x900/788/78824537.jpg',
      'url': 'https://luxusgrandhotel.com/room-types/',
      'price': 'PKR 9,860',
      'call': '03201999955',
    },
    {
      'name': 'Hotel\nMayFair Inn',
      'address':
          'Behind Monal\nRestaurant،50-52\nE-III,Commercial \nZone، Al Fateh Ln, \nCommercial Area \nGulberg III\nLahore,Punjab\n54660',
      'imagex':
          'https://content.r9cdn.net/rimg/himg/2c/8f/e3/hotelsdotcom-702739680-538b79d7_w-752771.jpg?width=1200&height=630&crop=false',
      'url': 'http://mayfairpk.com/rooms/',
      'price': 'PKR 522',
      'call': '03306715000',
    },
    {
      'name': 'Shelton\nHotel',
      'address':
          'Umar Farooq Road\nJ 3 Block\nBlock J 3\nPhase2 Johar \nTown,Lahore\nPunjab',
      'imagex':
          'https://www.tmhotels.com/wp-content/uploads/2018/10/DX3B4551.jpg',
      'url':
          'https://www.booking.com/hotel/pk/shelton-lahore.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2875790_dev-desktop_los-1_bw-2_dow-Sunday_defdate-1_room-287579001_206438828_1_1_0_lang-en_curr-PKR_gstadt-1_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=287579001_206438828_1_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2767043;dest_type=city;dist=0;group_adults=1;group_children=0;hapos=1;highlighted_blocks=287579001_206438828_1_1_0;hpos=1;no_rooms=1;req_adults=1;req_children=0;room1=A%2C;sb_price_type=total;sr_order=popularity;sr_pri_blocks=287579001_206438828_1_1_0__389900;srepoch=1593187876;srpvid=57ba71d2573d00bf;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,899',
      'call': '03338444676',
    },
    {
      'name': 'Avari\nHotel',
      'address': '87 Mall Rd\nGarhi Shahu, \nLahore,Punjab\n54000',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/116/116785990.jpg',
      'url': 'https://www.avarilahore.com/rooms-suites/',
      'price': 'PKR 12,861',
      'call': '(042) 36366366',
    },
    {
      'name': 'Four Points',
      'address': '25 Egerton Rd\nGarhi Shahu\nLahore,Punjab\n54000',
      'imagex':
          'https://www.brandsynario.com/wp-content/uploads/2019/04/Four-Points-by-Sheraton-Lahore.jpg',
      'url':
          'https://www.marriott.com/hotels/hotel-rooms/lhefp-four-points-lahore/',
      'price': 'PKR 14,585',
      'call': '(042) 36310077',
    },
    {
      'name': 'Hotel Pak Heritage',
      'address': '28 Davis Road,\nGarhi Shahu\nLahore,Punjab\n54000',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1280x900/116/116030208.jpg',
      'url': 'http://www.pakheritage.pk/#rooms',
      'price': 'PKR 4,472',
      'call': '(042) 36297979',
    },
    {
      'name': 'Mall View Hotel Gulberg',
      'address': 'G-6 Aziz Ave\nGulberg V, Lahore\nPunjab',
      'imagex':
          'https://dimg04.c-ctrip.com/images/220c0u000000jg5oa4476_R_800_525.jpg',
      'url':
          'https://www.agoda.com/mall-view-hotel-gulberg/hotel/all/lahore-pk.html?checkIn=2020-06-28&los=1&adults=1&rooms=1&cid=1731113&searchrequestid=19d11764-96b3-497a-8147-dc8cd0fac4c8&travellerType=-1',
      'price': 'PKR 3,294',
      'call': '03212111119',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Lahore Hotels"),
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
        itemCount: lahorehotels.length,
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
                          '${lahorehotels[index]['imagex']}',
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
                                    '${lahorehotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${lahorehotels[index]['price']}',
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
                                new Text('${lahorehotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${lahorehotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${lahorehotels[index]['url']}');
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
