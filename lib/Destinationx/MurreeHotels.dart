import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class MurreeHotels extends StatefulWidget {
  @override
  _MurreeHotelsState createState() => _MurreeHotelsState();
}

class _MurreeHotelsState extends State<MurreeHotels> {
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

  List murreehotels = [
    {
      'name': 'The\nMont\nCalm',
      'address':
          'Belle View\nEstate\nKashmir\nPoint\nMurree\nRawalpindi\nPunjab',
      'imagex':
          'https://lh3.googleusercontent.com/proxy/yQI7W-NjXvSMneIST3Um-46OTOW6ocxvmy6qgKGpqP0sa2uqzG1EOW5OM5g-he5wi5QxgmtLSm6N2c2N0W-25Co7tYaY2mmh31YHbX_4syEsn-wGOzuL0obpEr1Hn5HH',
      'url':
          'https://www.agoda.com/the-mont-calm/hotel/all/murree-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=4aa4bbe2-b85a-42f5-bd32-6decb0b72404&travellerType=-1&tspTypes=1',
      'price': 'PKR 13,000',
      'call': '0320 4002006',
    },
    {
      'name': 'DAYS\nINN',
      'address':
          'GPO Chowk\nKuldana Rd\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://pix10.agoda.net/hotelImages/920/9201823/9201823_19080813450079093070.jpg?s=1024x768',
      'url':
          'https://www.booking.com/hotel/pk/days-inn-murree.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-1948374_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-pk_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=194837408_240813652_3_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769851;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=194837408_240813652_3_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=194837408_240813652_3_1_0__765000;srepoch=1593237518;srpvid=90f92a0683000141;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 7,650',
      'call': '0311 1830111',
    },
    {
      'name': 'Shangrila\nResort\nHotel',
      'address':
          'Lawrence\nCollege\nRoad\nAdjacent to\nPunjab\nHouse\nMurree Bypass\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/09/73/6a/0c/eye-catching-view-of.jpg',
      'url':
          'https://www.expedia.com/Islamabad-Hotels-Shangrila-Resort-Hotel-Murree.h13335612.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593237704129&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=6141511&destination=Murree%2C+Punjab%2C+Pakistan&destType=MARKET&selected=13335612&sort=RECOMMENDED&top_dp=106&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.13335612.20200628.20200629.DDT.1.CID.6495822717.AUDID.&mctc=10&gclid=Cj0KCQjwudb3BRC9ARIsAEa-vUs2odA-eYkYpdL-sNGpF615vBvYY6ARe1ir-2UYi2jEW6YFgA5AauIaAmvJEALw_wcB&semdtl=&selectedRoomType=201403697&selectedRatePlan=206939739',
      'price': 'PKR 21,614',
      'call': '0300 5002719',
    },
    {
      'name': 'Kashmir\nContinental\nHotel',
      'address': 'Club Rd\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://thumbnails.trvl-media.com/Ss3zyhBqQFPh_BHMssE79u5LDpU=/500x333/smart/filters:quality(80)/images.trvl-media.com/hotels/41000000/40610000/40600200/40600119/256da467_z.jpg',
      'url':
          'https://www.agoda.com/kashmir-continental-hotel-studio-flats/hotel/murree-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=8fac5e46-dbc1-4db8-a4ed-2daab611a509&travellerType=-1',
      'price': 'PKR 1,015',
      'call': '0332 5275554',
    },
    {
      'name': 'Maisonette\nFirhill\nVillas',
      'address':
          'Governor\nHouse Road\nDaultana House\nKashmir point\nMurree\nRawalpindi\nPunjab',
      'imagex':
          'https://lh3.googleusercontent.com/-UnFei-lRVS2jzaS3vKaS6KfRqo31aARYfrFYPWkxIIGZBzFbPrBK-DxX28c4jmFbSNO4r4X=w1080-h608-p-no-v0',
      'url':
          'https://maisonette-firhill-villas-murree.business.site/?utm_source=gmb&utm_medium=referral',
      'price': 'PKR 10,000',
      'call': '(051) 3411327',
    },
    {
      'name': 'Arcadian\nBlue\nPines\nLuxury\nResort',
      'address':
          'Lawrence\nCollege Road\nnear Lawrence\nCollege\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://www.arcadian.pk/wp-content/uploads/2018/06/ABR_9955_DxO-copy.jpg',
      'url':
          'https://www.hotels.com/ho921645568/?pa=1&q-check-out=2020-06-29&tab=description&q-room-0-adults=2&YGF=1&q-check-in=2020-06-28&MGT=1&WOE=1&WOD=7&ZSX=0&SYE=3&q-room-0-children=0',
      'price': 'PKR 15,888',
      'call': '(051) 8436971',
    },
    {
      'name': 'Cosy\nKnock\nHotel',
      'address': '48 Bank Road\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/196/196201213.jpg',
      'url':
          'https://www.booking.com/hotel/pk/cosy-knock-murree12.en-gb.html?aid=2005135;label=5e0c9581-c094-4b5b-a18c-cf0b7213e732;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=500417901_169319309_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2769851;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=500417901_169319309_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=500417901_169319309_2_1_0__800000;srepoch=1593238409;srpvid=57c52bc499290117;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 8,000',
      'call': '0335 2222121',
    },
    {
      'name': 'Lockwood\nHotel\nMurree',
      'address':
          'Imtiaz\nShaheed\nRoad\nMurree\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-s/17/6f/9c/e6/lockwood-hotel-murree.jpg',
      'url': 'http://lockwoodhotel.com/',
      'price': 'PKR 20,943',
      'call': '(051) 3758012',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Murree Hotels"),
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
        itemCount: murreehotels.length,
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
                          '${murreehotels[index]['imagex']}',
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
                                    '${murreehotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${murreehotels[index]['price']}',
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
                                new Text('${murreehotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${murreehotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${murreehotels[index]['url']}');
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
