import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class NatiaGaliHotels extends StatefulWidget {
  @override
  _NatiaGaliHotelsState createState() => _NatiaGaliHotelsState();
}

class _NatiaGaliHotelsState extends State<NatiaGaliHotels> {
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

  List natiagalihotels = [
    {
      'name': 'Chinar\nFamily\nResort',
      'address': 'Hotel Rd\nBhurban\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://cdn.ostrovok.ru/t/640x400/content/51/70/5170bf2588b158d4fd298ab2c283d129a0270883.jpeg',
      'url':
          'https://www.expedia.com/Islamabad-Hotels-Chinar-Family-Resort.h13211413.Hotel-Information?chkin=2020-06-28&chkout=2020-06-29&x_pwa=1&rfrr=HSR&pwa_ts=1593267644822&referrerUrl=aHR0cHM6Ly93d3cuZXhwZWRpYS5jb20vSG90ZWwtU2VhcmNo&useRewards=false&rm1=a2&regionId=6050164&destination=Bhurban%2C+Punjab%2C+Pakistan&destType=MARKET&selected=13211413&sort=RECOMMENDED&top_dp=147&top_cur=USD&MDPCID=PK.META.HPA.HOTEL-CORESEARCH-desktop.HOTEL&MDPDTL=HTL.13211413.20200628.20200629.DDT.1.CID.6495822717.AUDID.&mctc=10&gclid=Cj0KCQjw3Nv3BRC8ARIsAPh8hgK1qZSp4mBEJIznaIS4-Kn2-aAEWU2z1mNLDwSTP6tHsMFvZ8YA-pIaAsJFEALw_wcB&semdtl=&selectedRoomType=201386502&selectedRatePlan=206843400',
      'price': 'PKR 28,579',
      'call': '(051) 3355229',
    },
    {
      'name': 'Bhurban\nInternational\nHotel',
      'address': 'Hotel Rd\nBhurban\nRawalpindi\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/884/88421369.jpg',
      'url':
          'https://www.agoda.com/bhurban-apartments-murree/hotel/bhurban-pk.html?checkIn=2020-06-28&los=1&adults=4&rooms=1&cid=1731113&searchrequestid=e6b63d72-ce9a-454e-ab3f-62ad0caea5e7&travellerType=-1',
      'price': 'PKR 3,380',
      'call': '(051) 3555075',
    },
    {
      'name': 'stargaze\nhotel &\napartment',
      'address':
          'Murree Rd\nSheikh-ul-\nBandi\nAbbottabad\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/840x460/92437560.jpg?k=4058dc88f63a6955efe9cd5541e5e70d608ee072dfa13f56bdc8df0dc4649a41&o=',
      'url':
          'https://www.agoda.com/stargaze-hotel-apartment/hotel/abbottabad-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=c64c318e-3c38-4644-8848-3037a79f3dc0&travellerType=-1',
      'price': 'PKR 1,953',
      'call': '(0992) 340128',
    },
    {
      'name': 'Shimla\nresort\n& rest house\nnathia\ngali',
      'address': 'Nathia\nGali\nAbbottabad\nKhyber\nPakhtunkhwa',
      'imagex':
          'https://r-cf.bstatic.com/images/hotel/max1280x900/223/223023282.jpg',
      'url':
          'https://www.booking.com/hotel/pk/shimla-resort-and-rest-house.en-gb.html?aid=2005135;label=0d8de207-bfd8-44af-9188-8043cfcaae59;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=527517002_185802628_0_42_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2770324;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=527517002_185802628_0_42_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;show_room=527517002;sr_order=popularity;sr_pri_blocks=527517002_185802628_0_42_0__792000;srepoch=1593268135;srpvid=a29665d381540190;type=total;ucfs=1&#RD527517002',
      'price': 'PKR 7,920',
      'call': '(0992) 355131',
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
        title: Text("Natia Gali Hotels"),
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
        itemCount: natiagalihotels.length,
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
                          '${natiagalihotels[index]['imagex']}',
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
                                    '${natiagalihotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${natiagalihotels[index]['price']}',
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
                                new Text('${natiagalihotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${natiagalihotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${natiagalihotels[index]['url']}');
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
