import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safar/Destinationx/AbbottabadHotels.dart';
import 'package:safar/Destinationx/BahawalpurHotels.dart';
import 'package:safar/Destinationx/ChitralHotels.dart';
import 'package:safar/Destinationx/FaisalabadHotels.dart';
import 'package:safar/Destinationx/GawadarHotel.dart';
import 'package:safar/Destinationx/HarappaHotels.dart';
import 'package:safar/Destinationx/IslamabadHotels.dart';
import 'package:safar/Destinationx/KaghanValleyHotels.dart';
import 'package:safar/Destinationx/KalamHotels.dart';
import 'package:safar/Destinationx/KarachiHotels.dart';
import 'package:safar/Destinationx/LahoreHotels.dart';
import 'package:safar/Destinationx/MultanHotels.dart';
import 'package:safar/Destinationx/MurreeHotels.dart';
import 'package:safar/Destinationx/NaltarHotels.dart';
import 'package:safar/Destinationx/NaranHotels.dart';
import 'package:safar/Destinationx/NatiaGaliHotels.dart';
import 'package:safar/Destinationx/PeshawarHotels.dart';
import 'package:safar/Destinationx/QuettaHotels.dart';
import 'package:safar/Destinationx/RawalpindiHotels.dart';
import 'package:safar/Destinationx/ShogranHotels.dart';
import 'package:safar/Destinationx/SwatHotels.dart';
import 'package:safar/Destinationx/TaxilaHotels.dart';
import 'package:safar/Destinationx/ThattaHotels.dart';
import 'package:safar/Details.dart';
import 'package:safar/citydata/AbtDetails.dart';
import 'package:safar/citydata/BhwlDetails.dart';
import 'package:safar/citydata/ChitralDetails.dart';
import 'package:safar/citydata/FasialDetails.dart';
import 'package:safar/citydata/GawadarDetails.dart';
import 'package:safar/citydata/HpDetails.dart';
import 'package:safar/citydata/IslamabadDetails.dart';
import 'package:safar/citydata/KaghanDetails.dart';
import 'package:safar/citydata/KalamDetails.dart';
import 'package:safar/citydata/KarachiDetails.dart';
import 'package:safar/citydata/LahoreDetails.dart';
import 'package:safar/citydata/MalamjabaDetails.dart';
import 'package:safar/citydata/MultanDetails.dart';
import 'package:safar/citydata/MurreeDetails.dart';
import 'package:safar/citydata/NaltarDetails.dart';
import 'package:safar/citydata/NaranDetails.dart';
import 'package:safar/citydata/NatiaDetails.dart';
import 'package:safar/citydata/PeshawarDetails.dart';
import 'package:safar/citydata/QuettaDetails.dart';
import 'package:safar/citydata/RawalpindiDetails.dart';
import 'package:safar/citydata/ShogranDetails.dart';
import 'package:safar/citydata/SwatDetails..dart';
import 'package:safar/citydata/TaxilaDetails.dart';
import 'package:safar/citydata/ThattaDetails.dart';
import 'package:safar/models/user.dart';
import 'package:safar/screens/Wrapper.dart';
import 'package:safar/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Destinationx/MalamjabaHotels.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  List cities = [
    {
      'name': 'Lahore',
      'subtitle': 'Historic site,\nhistory and \nmuseum',
      'imagex':
          'https://www.wildfrontierstravel.com/media/cache/responsive/hero-1920/upload/3e/67/3e6776a7b1a08435ffac67357907aba64bc72268.jpeg?21e6d88f',
      'url': LahoreDetails(),
      'page': LahoreHotels(),
    },
    {
      'name': 'karachi',
      'subtitle': 'Beach,\nwater park and \nshopping',
      'imagex':
          'https://lh3.googleusercontent.com/r7sV5NFAeg-eotsQirssfEVZ8Sxxqw291NNNXUPOx2XS-QQhWezAu8sBp0MOBb4WBd3WcDe-=w1080-h608-p-no-v0',
      'url': KarachiDetails(),
      'page': KarachiHotels(),
    },
    {
      'name': 'islamabad',
      'subtitle': 'Zoo,\nmonument,art \nmuseum',
      'imagex':
          'http://humansofpakistan.org/wp-content/uploads/2018/02/Islamabad_top_view-1200x800.jpg',
      'url': IslamabadDetails(),
      'page': IslamabadHotels(),
    },
    {
      'name': 'naran',
      'subtitle': 'Lake,\nrafting, and \nriver',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-o/0f/5e/84/76/count-the-jeeps-on-lake.jpg',
      'url': NaranDetails(),
      'page': NaranHotels(),
    },
    {
      'name': 'murree',
      'subtitle': 'Honeymoon and \nromance',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-m/1280/17/79/46/58/lahore-museum.jpg',
      'url': MurreeDetails(),
      'page': MurreeHotels(),
    },
    {
      'name': 'swat',
      'subtitle': 'Lake,\nbuddhism, \nwaterfall',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-m/1280/19/67/88/93/swat-valley.jpg',
      'url': SwatDetails(),
      'page': SwatHotels(),
    },
    {
      'name': 'peshawar',
      'subtitle': 'Historic site,\nmuseum,\nhistory ',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-o/0e/94/99/cc/caption.jpg',
      'url': PeshawarDetails(),
      'page': PeshawarHotels(),
    },
    {
      'name': 'kaghan\nvalley',
      'subtitle': 'Large, scenic\nalpine valley',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-o/14/4d/73/c3/terracing-on-lalazar.jpg',
      'url': KaghanDetails(),
      'page': KaghanValleyHotels(),
    },
    {
      'name': 'chitral',
      'subtitle': 'Mountain and park',
      'imagex':
          'https://media-cdn.tripadvisor.com/media/photo-o/09/c3/c0/ce/chitral-valley.jpg',
      'url': ChitralDetails(),
      'page': ChitralHotels(),
    },
    {
      'name': 'rawalpindi',
      'subtitle': 'Park and shopping',
      'imagex':
          'https://i0.wp.com/www.christustraeger-schwestern.de/wp-content/uploads/2017/08/Rawalpindi.jpeg?w=1080&ssl=1',
      'url': RawalpindiDetails(),
      'page': RawalpindiHotels(),
    },
    {
      'name': 'Multan',
      'subtitle': 'Shrine, clock tower, \nmausoleum',
      'imagex':
          "https://photos.worldtravelserver.com/photo/30790/large/80673992.jpg",
      'url': MultanDetails(),
      'page': MultanHotels(),
    },
    {
      'name': 'taxila',
      'subtitle': 'Archaeological site',
      'imagex':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Dharmarajika_stupa%2CTaxila.jpg/800px-Dharmarajika_stupa%2CTaxila.jpg",
      'url': TaxilaDetails(),
      'page': TaxilaHotels(),
    },
    {
      'name': 'kalam',
      'subtitle': 'Lake, honeymoon, \nwaterfall',
      'imagex':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Malam_Jaba%2C_Swat%2C_Pakistan.JPG/800px-Malam_Jaba%2C_Swat%2C_Pakistan.JPG",
      'url': KalamDetails(),
      'page': KalamHotels(),
    },
    {
      'name': 'shogran',
      'subtitle': 'Honeymoon and lake',
      'imagex':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Rest_House_at_Shogran.jpg/800px-Rest_House_at_Shogran.jpg",
      'url': ShogranDetails(),
      'page': ShogranHotels(),
    },
    {
      'name': 'Quetta',
      'subtitle': 'Lake, mountain, \nand history',
      'imagex':
          "http://balochistan.gov.pk/wp-content/uploads/2019/05/hanna-lake.jpg",
      'url': QuettaDetails(),
      'page': QuettaHotels(),
    },
    {
      'name': 'Bahawalpur',
      'subtitle': 'Palace, desert \nand islamic art',
      'imagex':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Entrance_of_Noor_Mahal.jpg/1920px-Entrance_of_Noor_Mahal.jpg",
      'url': BhwlDetails(),
      'page': BahawalpurHotels(),
    },
    {
      'name': 'Nathia Gali',
      'subtitle': 'Hiking, honeymoon, \nand lake',
      'imagex':
          "http://www.retreathotels.pk/nathiagali_restaurant/nathiagali_restaurant_53.jpg",
      'url': NatiaDetails(),
      'page': NatiaGaliHotels(),
    },
    {
      'name': 'Faisalabad',
      'subtitle': 'Clock tower, park, \nshopping',
      'imagex':
          "https://www.fatimatravels.com/images/Faisalabad/cheapest-tickets-to-faisalabad.jpg?auto=yes&bg=777&fg=555&text=First%20slide",
      'url': FaisalDetails(),
      'page': FaisalabadHotels(),
    },
    {
      'name': 'Abbottabad',
      'subtitle': 'Nature and history',
      'imagex':
          "https://www.youlinmagazine.com/articles/ilyasi-mosque-a-pearl-in-abbottabad-1.jpg",
      'url': AbtDetails(),
      'page': AbbottabadHotels(),
    },
    {
      'name': 'Harappa',
      'subtitle': 'Archaeological site, \nruins',
      'imagex':
          "https://akm-img-a-in.tosshub.com/sites/dailyo/fb_feed_images/story_image/201808/harappan-civilisatio_081918061528.jpg",
      'url': HpDetails(),
      'page': HarappaHotels(),
    },
    {
      'name': 'Thatta',
      'subtitle':
          'Lake, history,\ntomb, monument,\nand classical\narchitecture',
      'imagex':
          "https://4.bp.blogspot.com/-969RHYVOu3k/VGWZT8Gv3wI/AAAAAAAAA88/9YNruVkSEOc/s1600/Shah-Jahan-Mosque-in-Thatta-Pakistan-06.jpg",
      'url': ThattaDetails(),
      'page': ThattaHotels(),
    },
    {
      'name': 'Malam Jabba',
      'subtitle': 'Ski resort,\nskiing, winter\nsports,\nand mountain',
      'imagex':
          "https://dailytimes.com.pk/assets/uploads/2019/12/05/Malam_Jabba_Ski_Resort-1280x720.jpg",
      'url': MalamjabaDetails(),
      'page': MalamjabaHotels(),
    },
    {
      'name': 'Gwadar',
      'subtitle': 'Beach,\noff-roading,\nhoneymoon,\nand park',
      'imagex':
          "https://c4.wallpaperflare.com/wallpaper/858/989/257/gwadar-wallpaper-preview.jpg",
      'url': GawadarDetails(),
      'page': GawadarHotels(),
    },
    {
      'name': 'naltar\nvalley',
      'subtitle': "Peaceful,\nbeautiful,\nLakes, hiking,\nall is\nthere",
      'imagex':
          "https://www.travelinglifestyle.net/wp-content/uploads/2020/05/Habba-Khatoon.jpeg",
      'url': NaltarDetails(),
      'page': NaltarHotels(),
    },
    // {
    //   'name': '',
    //   'subtitle': '',
    //   'imagex': "",
    //   'url': "",
    //   'page': HarappaHotels(),
    // },
    // {
    //   'name': '',
    //   'subtitle': '',
    //   'imagex': "",
    //   'url': "",
    //   'page': HarappaHotels(),
    // },
  ];

  _listItem(context, city) {
    return new Padding(
      padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: new Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Stack(children: [
                Container(
                  child: SafeArea(
                    child: new ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: new Radius.circular(16.0),
                        topRight: new Radius.circular(16.0),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        new Image.network('${city['imagex']}',
                            fit: BoxFit.cover),
                      ]),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      likes.contains(city['name'])
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: likes.contains(city['name'])
                          ? Colors.red
                          : Colors.white,
                      size: likes.contains(city['name']) ? 30 : 25,
                    ),
                    onPressed: () {
                      _getList();
                      setState(() {
                        // saved.length;
                        if (likes.contains(city['name'])) {
                          likes.remove(city['name']);
                          prefs.setStringList("key", likes);

                          _saveList();
                        } else {
                          likes.add(city['name']);
                          prefs.setStringList("key", likes);
                          _saveList();
                        }
                      });
                    }),
              ]),
              new Padding(
                padding: EdgeInsets.all(16.0),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Stack(children: [
                                  new Text(
                                    '${city['name']}'.toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ]),
                                //the button to add favorites
                              ],
                            ),
                          ),
                          new SizedBox(
                            width: 125.0,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: new RaisedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => city['page']));
                                },
                                icon: Icon(Icons.room_service),
                                label: Text('Hotels'),
                                color: Colors.red[200],
                                elevation: 10.0,
                              ),
                            ),
                          )
                        ],
                      ),
                      new SizedBox(height: 10.0),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            '${city['subtitle']}',
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: new SizedBox(
                                  width: 117.0,
                                  child: new RaisedButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  city['url']));
                                    },
                                    icon: Icon(Icons.explore),
                                    label: Text("Explore"),
                                    color: Colors.amber,
                                    elevation: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
              )
            ],
          )),
    );
  }

  String _textFilter = '';

  @override
  void initState() {
    super.initState();
    getPrefs();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(hintText: 'Search...'),
          onChanged: (text) => setState(() => _textFilter = text)),
    );
  }

  SharedPreferences prefs;

  void getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      likes = _getList();
      likes = _getList() ?? List();
    });
  }

  Future<bool> _saveList() async {
    return await prefs.setStringList("key", likes);
  }

  List<String> _getList() {
    return prefs.getStringList("key");
  }

  bool save = false;

  List<String> likes = ["extra"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Explore Pakistan"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => StreamProvider<User>.value(
                            value: AuthService().user, child: Wrapper())));
              }),
        ],
      ),
      // drawer: Drawer(),
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
        itemCount: cities
                .where((element) => element['name']
                    .toLowerCase()
                    .contains(_textFilter.toLowerCase()))
                .length +
            1,
        itemBuilder: (context, index) {
          var filteredCities = cities
              .where((city) => city['name']
                  .toLowerCase()
                  .contains(_textFilter.toLowerCase()))
              .toList();
          return index == 0
              ? _searchBar()
              : _listItem(context, filteredCities[index - 1]);
        },
      ),
    );
  }
}

// }
class HexToColor extends Color {
  static _hexToColor(String code) {
    return int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  }

  HexToColor(final String code) : super(_hexToColor(code));
}
