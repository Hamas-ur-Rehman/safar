import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class MultanHotels extends StatefulWidget {
  @override
  _MultanHotelsState createState() => _MultanHotelsState();
}

class _MultanHotelsState extends State<MultanHotels> {
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

  List multanhotels = [
    {
      'name': 'Ramada',
      'address': '76 Abdali\nRd, Bukhari\nColony\nMultan\nPunjab',
      'imagex':
          'https://images.trvl-media.com/hotels/18000000/17150000/17141700/17141643/9d326b77.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium',
      'url':
          'https://www.expedia.com/Multan-Hotels-Ramada-By-Wyndham-Multan.h17141643.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593255461904&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=2458&destination=Multan%2C+Punjab%2C+Pakistan&destType=MARKET&selected=17141643&sort=RECOMMENDED&top_dp=68&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.17141643.20200628.20200629.DDT.1.CID.9919993890.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgLTUiI3LozaxdgpKMl1F4rsWUGuZK8IN-1XSqjjcq6xXBlhNaewq6oaAkWCEALw_wcB&semdtl=&selectedRoomType=220857437&selectedRatePlan=292235381',
      'price': 'PKR 12,574',
      'call': '(061) 4540877',
    },
    {
      'name': 'Hotel DE\nShalimar',
      'address':
          '43-A Tariq\nRd, Mohallah\nDarkhana\nWala Nawan\nShehr\nMultan\nPunjab',
      'imagex':
          'https://images.trvl-media.com/hotels/28000000/27120000/27114400/27114394/ef3b14e2.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium',
      'url':
          'https://www.expedia.com/Multan-Hotels-Hotel-DE-SHALIMAR.h27114394.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593255566957&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=2458&destination=Multan%2C+Punjab%2C+Pakistan&destType=MARKET&selected=27114394&sort=RECOMMENDED&top_dp=92&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.27114394.20200628.20200629.DDT.1.CID.9919993890.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgJvK8sehrP6f7IMCD8xgKSRMNV5Ndf5w6Xh5up3mRCVq_ZnZGVnqFUaAj8zEALw_wcB&semdtl=&selectedRoomType=215415645&selectedRatePlan=256064455',
      'price': 'PKR 5,500',
      'call': '(061) 4542009',
    },
    {
      'name': 'New Pride\nHotel',
      'address': 'Nishtar Rd\nAl Rahim\nColony\nMultan\nPunjab ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/162/162938552.jpg',
      'url':
          'https://www.booking.com/hotel/pk/accommodation-meeting-room.en-gb.html?aid=2005135;label=7e349fa0-bb0e-4764-abdb-56f7d784abc5;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=409057707_231803460_0_2_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769709;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=409057707_231803460_0_2_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=409057707_231803460_0_2_0__199999;srepoch=1593255777;srpvid=5c0f4db0b198008d;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 2,000',
      'call': '0300 1115620',
    },
    {
      'name': 'Aimys\nVilla\nGuest\nHouse',
      'address':
          'Opposite\nRegional\nTax Office\nKalma Chowk\nLMQ Rd\nNawan Shehr\nMultan\nPunjab',
      'imagex':
          'https://dimg04.c-ctrip.com/images/220t190000017bymq0E02_R_1136_750_R5_D.jpg',
      'url':
          'https://www.agoda.com/aimys-villa-guest-house/hotel/all/multan-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=0e642c32-6c73-45f5-95f9-193cf23f381c&travellerType=-1&tspTypes=2',
      'price': 'PKR 3,227',
      'call': '0300 8633902',
    },
    {
      'name': 'Fiesta Inn\nHotel &\nResorts',
      'address': 'opp. RT\noffice،\nNawansher\nNawan Shehr\nMultan,\nPunjab',
      'imagex':
          'https://www.blizin.com/public/images/uploads/hotel/views/fiestainnmultan-1555584439.jpg',
      'url':
          'https://www.booking.com/hotel/pk/fiesta-inn-amp-resorts-multan-multan.en-gb.html?aid=2005135;label=c2b2b71d-223c-4ee2-b76e-a615ea429e67;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=347634906_229861842_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769709;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=347634906_229861842_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=347634906_229861842_2_1_0__349999;srepoch=1593256102;srpvid=a4784e53ed3600bf;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,500',
      'call': '(061) 4572968',
    },
    {
      'name': 'Avari\nXpress\nHotel\nMultan',
      'address': 'Gillani\nColony\nMultan\nPunjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/223/223259332.jpg',
      'url':
          'https://www.booking.com/hotel/pk/avari-xpress-multan.en-gb.html?aid=2005135;label=42ecc5bf-8a82-4a29-a15b-29307a34afcb;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=401881202_123775121_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769709;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=401881202_123775121_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=401881202_123775121_2_1_0__945000;srepoch=1593256262;srpvid=6aa44ea29d610095;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 9,450',
      'call': '(061) 4577141',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Multan Hotels"),
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
        itemCount: multanhotels.length,
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
                          '${multanhotels[index]['imagex']}',
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
                                    '${multanhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${multanhotels[index]['price']}',
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
                                new Text('${multanhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${multanhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${multanhotels[index]['url']}');
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
