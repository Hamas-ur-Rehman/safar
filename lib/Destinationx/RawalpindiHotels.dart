import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class RawalpindiHotels extends StatefulWidget {
  @override
  _RawalpindiHotelsState createState() => _RawalpindiHotelsState();
}

class _RawalpindiHotelsState extends State<RawalpindiHotels> {
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

  List rawalpindihotels = [
    {
      'name': 'Safari\nClub 4',
      'address':
          'Commercial\nArea Rd\nBahria Town\nPhase II\nBahria Town\nRawalpindi\nPunjab ',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1024x768/154/154116892.jpg',
      'url':
          'https://www.expedia.com/Islamabad-Hotels-Safari-Club-4.h30326640.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593251614521&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=1633&destination=Islamabad%2C+Federal+Capital+Territory%2C+Pakistan&destType=MARKET&selected=30326640&sort=RECOMMENDED&top_dp=32&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.30326640.20200628.20200629.DDT.1.CID.6495822717.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgKtvfnDWoAnhnnCgGyxho00GdwsjWB-QAPZtaNvL3WsGl-kkH9W-P0aAkrVEALw_wcB&semdtl=&selectedRoomType=221726785&selectedRatePlan=298216871',
      'price': 'PKR 6,280',
      'call': '(051) 5734302',
    },
    {
      'name': 'Safari\nClub 1',
      'address': 'Safari\nVillas\nRawalpindi\nPunjab',
      'imagex':
          'https://www.croozi.com/upload/loc1024/1483736620location326.jpg',
      'url':
          'https://www.expedia.com/Islamabad-Hotels-Safari-Club-1.h30230723.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593251791445&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=179909&destination=Rawalpindi%2C+Federal+Capital+Territory%2C+Punjab%2C+Pakistan&destType=MARKET&selected=30230723&sort=RECOMMENDED&top_dp=28&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.30230723.20200628.20200629.DDT.1.CID.6495822717.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgKAs95H_SHkzqD9qpTSGbhsD4ePAnDix_xdsJC6HFVi_R00jFEwOBsaAmBREALw_wcB&semdtl=&selectedRoomType=218727171&selectedRatePlan=278087372',
      'price': 'PKR 5,529',
      'call': '(051) 5707081',
    },
    {
      'name': 'khyber\nLodge',
      'address':
          '0-9 Block C\nPolice\nFoundation\nRawalpindi\nIslamabad\nCapital\nTerritory',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/125070229.jpg?k=a62064fd1db7317aa6935fa4d84f9e7bbdf64d37392d44a323e98453193895db&o=',
      'url':
          'https://www.agoda.com/khyber-lodge/hotel/all/rawalpindi-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=369718ec-e159-4301-a482-5a5bf8734b84&travellerType=-1',
      'price': 'PKR 2,950',
      'call': '0311 5174233',
    },
    {
      'name': 'Royalton\nHotel',
      'address': 'G254 Liaqat\nRd, Opposite\nLiaquat Bagh\nRawalpindi\nPunjab',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/840x460/150578133.jpg?k=c02b5e0ff2dd27a34ffe8ec86985c510a5fa147fba406ed83e4a6074391198e7&o=',
      'url':
          'https://www.booking.com/hotel/pk/royalton-rawalpindi.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-1170173_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=117017301_86101659_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2772585;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=117017301_86101659_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=117017301_86101659_2_1_0__600000;srepoch=1593252047;srpvid=f5154667c70200b5;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 6,000',
      'call': '(051) 5762300',
    },
    {
      'name': 'Liberty\nExecutive\nSuites',
      'address':
          '234 Hub\nCommercial\nNear Bahria\nBaigum\nAkhter\nMemorial\nHospital\nPhase 8 Near\nBahria Head\noffice\nSafari Valley\nCommercial\nBlock Bahria\nSafari Valley\nRawalpindi\nPunjab',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/135563421.jpg?k=0cd4af38ec7a041de9b5b772cd4c0703eeca4a3c9363271392aefedd20f101d8&o=',
      'url':
          'https://www.booking.com/hotel/pk/liberty-executive-suites.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2428578_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=242857801_206379118_2_0_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2772585;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=242857801_206379118_2_0_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=242857801_206379118_2_0_0__750000;srepoch=1593252221;srpvid=dcb746be3a09001a;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,500',
      'call': '0335 9771199',
    },
    {
      'name': 'Pearl\nContinental',
      'address': 'The Mall\nNational\nHwy 5\nRawalpindi\nPunjab',
      'imagex':
          'https://pix10.agoda.net/hotelImages/569/569440/569440_15080422370033645624.jpg?s=1200x800',
      'url': 'https://www.pchotels.com/pcrawalpindi/en/rooms-and-suites.html',
      'price': 'PKR 13,204',
      'call': '(051) 111 505 505',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Rawalpindi Hotels"),
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
        itemCount: rawalpindihotels.length,
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
                          '${rawalpindihotels[index]['imagex']}',
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
                                    '${rawalpindihotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${rawalpindihotels[index]['price']}',
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
                                    '${rawalpindihotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${rawalpindihotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${rawalpindihotels[index]['url']}');
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
