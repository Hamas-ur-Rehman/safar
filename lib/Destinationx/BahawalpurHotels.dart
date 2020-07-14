import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class BahawalpurHotels extends StatefulWidget {
  @override
  _BahawalpurHotelsState createState() => _BahawalpurHotelsState();
}

class _BahawalpurHotelsState extends State<BahawalpurHotels> {
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

  List bahawalpurhotels = [
    {
      'name': 'Hotel\nexecutive\nlodges',
      'address':
          'Near\nBaghdad\nRailway\nStation\nUniversity Rd\nMadina Town\nBahawalpur\nPunjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1280x900/122/122125653.jpg',
      'url':
          'https://www.agoda.com/hotel-executive-lodges_2/hotel/bahawalpur-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=5a707a49-b734-4ea3-b62c-746b0b60967f&travellerType=-1',
      'price': 'PKR 4,200',
      'call': '0310 6549900',
    },
    {
      'name': 'Alinas\nHotel',
      'address': '29 A Sarwar\nShaheed Rd\nModel Town\nBahawalpur\nPunjab',
      'imagex':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/256786836.jpg?k=cd2acd56b15bf055bc478b070d90d165659b5ad06ac100a6dc54a510af55d76b&o=',
      'url':
          'https://www.agoda.com/alinas-hotel/hotel/all/bahawalpur-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=c09e15b1-7c94-4868-9f1d-a8a047de0d83&travellerType=-1&tspTypes=6',
      'price': 'PKR 3,636',
      'call': '(062) 2881119',
    },
    {
      'name': 'Motel\nParadise\nInn',
      'address': '13-A, Main\nRd Model\nTown C Rd\nBahawalpur\nPunjab',
      'imagex':
          'https://www.imusafir.pk/data/frontImages/hotels/interior_plan_image/1474913805_bahawalpur-Paradise-inn-motel-garden-.jpg',
      'url':
          'https://www.booking.com/hotel/pk/motel-paradiseinn.en-gb.html?aid=2005135;label=a4eea73d-ee82-44e6-b1e7-c0ef946613f6;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=368372402_196110089_2_1_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2755460;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=368372402_196110089_2_1_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=368372402_196110089_2_1_0__300000;srepoch=1593266784;srpvid=cfec63303257004a;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,000',
      'call': '0333 6361414',
    },
    {
      'name': 'Pak\nContinental\nHotel',
      'address': 'Bobby Plaza\nCircular Rd\nOld City\nBahawalpur\nPunjab ',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/903/90398046.jpg',
      'url':
          'https://www.booking.com/hotel/pk/pak-continental-bahawalpur.en-gb.html?aid=356938;label=metagha-link-localuniversalPK-hotel-2207275_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_lang-en_curr-PKR_gstadt-2_rateid-0_aud-0_cid-_gacid-6641364928_mcid-10;sid=c654467ea51baca9c72ecb5c4e7ffdf8;all_sr_blocks=220727503_241389200_2_41_0;checkin=2020-06-28;checkout=2020-06-29;dest_id=-2755460;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=220727503_241389200_2_41_0;hpos=1;no_rooms=1;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=220727503_241389200_2_41_0__350000;srepoch=1593266899;srpvid=01c06369d80d014e;type=total;ucfs=1&#hotelTmpl',
      'price': 'PKR 3,500',
      'call': '0344 4999959',
    },
    {
      'name': 'Royal\nMark\nHotel',
      'address':
          'Aziz\nBhatti\nShaheed Rd\nModel Town A\nModel Town\nBahawalpur\nPunjab',
      'imagex':
          'https://q-cf.bstatic.com/images/hotel/max1024x768/991/99112046.jpg',
      'url':
          'https://www.agoda.com/royal-mark-hotel/hotel/all/bahawalpur-pk.html?checkIn=2020-06-28&los=1&adults=2&rooms=1&cid=1731113&searchrequestid=3d57676a-0f47-4740-8b1e-53341aa1f46f&travellerType=-1',
      'price': 'PKR 4,000',
      'call': '(062) 2888123',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Bahawalpur Hotels"),
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
        itemCount: bahawalpurhotels.length,
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
                          '${bahawalpurhotels[index]['imagex']}',
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
                                    '${bahawalpurhotels[index]['name']}'
                                        .toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                new Text(
                                  '${bahawalpurhotels[index]['price']}',
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
                                    '${bahawalpurhotels[index]['address']}',
                                    style: TextStyle(fontSize: 10)),
                                Row(
                                  children: [
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            'tel: ${bahawalpurhotels[index]['call']}');
                                      },
                                      icon: Icon(Icons.call),
                                      label: Text("Call"),
                                      color: Colors.red[200],
                                      elevation: 10.0,
                                    ),
                                    new RaisedButton.icon(
                                      onPressed: () {
                                        customLaunch(
                                            '${bahawalpurhotels[index]['url']}');
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
