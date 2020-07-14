import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class KarachiHotels extends StatefulWidget {
  @override
  _KarachiHotelsState createState() => _KarachiHotelsState();
}

class _KarachiHotelsState extends State<KarachiHotels> {
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

  List karachihotels = [
    {
      'name': 'Beach Luxury\nHotel',
      'address': 'Moulvi Tamizuddin\nKhan Rd,Lalazar\nKarachi City\nSindh',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/03/1c/88/e9/beach-luxury-hotel.jpg',
      'url':
          'https://reservations.travelclick.com/14413?dateIN=06/28/2020&nights=1&adults=1&hotelID=14413&rateplanID=139353&roomtypeID=314532&subchan=GOOGLE_PK_desktop_CPA&currency=PKR&utm_source=googleha&utm_medium=meta&utm_content=HPA_14413_localuniversal_1_PK_desktop_2020-06-28_default_9090959734_&children=0&languageid=en&gdp=hotelfinder&utm_campaign=ds#/accommodation/room',
      'price': 'PKR 17,196',
      'call': '(021) 35611031',
    },
    {
      'name': 'Ramada\nPlaza',
      'address': 'Star Avenue\nFaisal Cantonment\nKarachi City\nSindh 75530',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/170/170835226.jpg',
      'url':
          'https://www.agoda.com/ramada-plaza-karachi/hotel/karachi-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=a8387548-c764-4dc2-874a-12d021f3a9bb&travellerType=-1',
      'price': 'PKR 11,406',
      'call': '(021) 99242600',
    },
    {
      'name': 'Pearl\nContinental',
      'address': 'Club Rd\nCivil Lines\nKarachi City\nSindh',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/102/10271144.jpg',
      'url':
          'https://reservations.travelclick.com/99647?dateIN=06/28/2020&nights=1&adults=1&hotelID=99647&rateplanID=1989671&roomtypeID=418632&subchan=GOOGLE_PK_desktop_CPA&currency=PKR&utm_source=googleha&utm_medium=meta&utm_content=HPA_99647_localuniversal_1_PK_desktop_2020-06-28_default_9090959734_&children=0&languageid=en&gdp=hotelfinder&utm_campaign=ds#/accommodation/room',
      'price': 'PKR 15,127',
      'call': '(021) 111 505 505',
    },
    {
      'name': 'Hotel\nCrown Inn',
      'address':
          'Opposite: FIA\nHeadquarter\nHigh Court،171\nFrere Road\nClarke St\nShahrah e Iraq\nSaddar, Next To\nPassport Office\nSaddar Artillery\nMaidan\nKarachi City\nSindh 74400',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1280x900/231/231059043.jpg',
      'url':
          'https://www.booking.com/hotel/pk/crown-inn.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-1718508_dev-desktop_los-1_bw-2_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-1_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=171850802_261918507_1_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2764584;dest_type=city;dist=0;from_beach_non_key_ufi_sr=1;group_adults=1;group_children=0;hapos=1;highlighted_blocks=171850802_261918507_1_1_0;hpos=1;no_rooms=1;req_adults=1;req_children=0;room1=A%2C;sb_price_type=total;sr_order=popularity;sr_pri_blocks=171850802_261918507_1_1_0__450000;srepoch=1593195255;srpvid=88da803bc6050096;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 4,792',
      'call': '(021) 35622002',
    },
    {
      'name': 'Zifan Hotel',
      'address':
          '29B, Off\nShahrah-e-Faisal\nBlock-6 Block\n6 PECHS\nKarachi City\nSindh 75400',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/180/180150487.jpg',
      'url': 'https://zifanhotels.com/?booking',
      'price': 'PKR 11,000',
      'call': '(021) 34322140',
    },
    {
      'name': 'Movenpick Hotel',
      'address': 'Club Rd\nCivil Lines\nKarachi City\nSindh 75530',
      'imagex':
          'https://i.pinimg.com/originals/a7/50/15/a75015bdd4d8aa439a4c33c95fe0bed0.jpg',
      'url':
          'https://all.accor.com/ssr/app/accor/rates/B4N7/index.en.shtml?dateIn=2020-06-28&nights=1&compositions=1&stayplus=false&gclid=Cj0KCQjwudb3BRC9ARIsAEa-vUsqvdvJ7jVbtyI7WbuA5YtAuXccfmwgC0kM-PIILIzRxwNETv9fsvAaAvIPEALw_wcB&utm_medium=partenariats&utm_source=Google%20Hotel%20Ads',
      'price': 'PKR 13,258',
      'call': '(021) 35633333',
    },
    {
      'name': 'Avari Towers',
      'address':
          '242-244\nFatima Jinnah Rd\nKarachi\nCantonment\nKarachi City\nSindh 75530',
      'imagex': 'https://www.avaritowers.com/wp-content/uploads/1-16.jpg',
      'url':
          'https://www.expedia.com/Karachi-Hotels-Avari-Towers-Karachi.h1635863.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593195783702&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a1&regionId=1809&destination=Karachi%2C+Sindh%2C+Pakistan&destType=MARKET&selected=1635863&sort=RECOMMENDED&top_dp=75&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.1635863.20200628.20200629.DDT.2.CID.9919993890.AUDID.&mctc=10&gclid=Cj0KCQjwudb3BRC9ARIsAEa-vUtEyxXE-WlQqxQXpSg76BXDWYT2Fej_bY_WBk2KoGRe4b8sFCpzWrQaAnNcEALw_wcB&semdtl=&selectedRoomType=201138831&selectedRatePlan=205402035',
      'price': 'PKR 18,360',
      'call': '(021) 111 282 747',
    },
    {
      'name': 'Hotel Seaview',
      'address':
          'M-3 Sambrina\nBeach Building\nClifton Block4\nOpposite\nCarrefour\nBlock 4 Clifton\nKarachi City\nSindh 75500',
      'imagex':
          'https://pix10.agoda.net/hotelImages/529/529415/529415_16031216260040711492.jpg?s=1024x768',
      'url':
          'https://www.agoda.com/hotel-seaview/hotel/all/karachi-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=d01ceab7-9600-41d2-97a0-14a884d17f3c&travellerType=-1',
      'price': 'PKR 3,559',
      'call': '0342 3133133',
    },
    {
      'name': 'Swiss Hotel',
      'address': 'c-885، Block-2\nBlock 2 PECHS\nKarachi City\nSindh',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/0a/cd/89/38/hotel-swiss.jpg',
      'url':
          'https://www.agoda.com/hotel-swiss/hotel/karachi-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=588b2711-9b44-48f2-a4b6-1c3233433c82&travellerType=-1',
      'price': 'PKR 1,359',
      'call': '0340 9174228',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Karachi Hotels"),
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
        itemCount: karachihotels.length,
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
                          '${karachihotels[index]['imagex']}',
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
                                    '${karachihotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${karachihotels[index]['price']}',
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
                                new Text('${karachihotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${karachihotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${karachihotels[index]['url']}');
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
