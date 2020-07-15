import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GMapx extends StatefulWidget {
  @override
  GMapxState createState() => GMapxState();
}

class GMapxState extends State<GMapx> {
  final Geolocator _geolocator = Geolocator();

  Position _currentPosition;
  String searchAddr;
  bool _showMapStyle = false;
  GoogleMapController _mapController;
  Completer<GoogleMapController> _controller = Completer();

  void _toggleMapStyle() async {
    String style = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');

    if (_showMapStyle) {
      _mapController.setMapStyle(style);
    } else {
      _mapController.setMapStyle(null);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        _mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Map"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.layers),
              onPressed: () {
                setState(() {
                  _showMapStyle = !_showMapStyle;
                });

                _toggleMapStyle();
              })
        ],
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://q-cf.bstatic.com/images/hotel/max1024x768/170/170835226.jpg',
                  24.8942,
                  67.1556,
                  "Ramada Plaza"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://media-cdn.tripadvisor.com/media/photo-s/03/1c/88/e9/beach-luxury-hotel.jpg',
                  24.8434,
                  66.9955,
                  "Beach Luxury Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://q-cf.bstatic.com/images/hotel/max1024x768/102/10271144.jpg',
                  24.8475,
                  67.0254,
                  "Pearl Continental"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://q-cf.bstatic.com/images/hotel/max1280x900/231/231059043.jpg',
                  24.8583,
                  67.0241,
                  "Hotel Crown Inn"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0e/98/91/3d/swat-view-hotel.jpg',
                  34.7972366,
                  72.40366,
                  "Swat View Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://media-cdn.tripadvisor.com/media/photo-s/08/e0/d7/92/swat-serena-hotel.jpg',
                  34.7972366,
                  73.40366,
                  "Serena Hotel Swat"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://q-cf.bstatic.com/images/hotel/max1024x768/194/194964591.jpg',
                  33.7209133,
                  73.0790253,
                  "Hotel de Papáe"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://dimg04.c-ctrip.com/images/2204180000014iq7i3EB8_R_1136_750_R5_D.jpg',
                  33.7043,
                  72.9790,
                  "Hotel DE Palazzo"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://r-cf.bstatic.com/images/hotel/max1024x768/180/180150487.jpg',
                  24.8625,
                  67.0738,
                  "Zifan Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://i.pinimg.com/originals/a7/50/15/a75015bdd4d8aa439a4c33c95fe0bed0.jpg',
                  24.8467,
                  67.0261,
                  "Movenpick Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://www.avaritowers.com/wp-content/uploads/1-16.jpg',
                  24.8527,
                  67.0323,
                  "Avari Towers"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://q-cf.bstatic.com/images/hotel/max1024x768/562/56216134.jpg',
                  31.5526,
                  74.3384,
                  "Pearl Continental Lahore"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://www.citysearch.pk/UF/Companies/5703/the-nishat-hotel.png',
                  31.5069,
                  74.3561,
                  "Nishat Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://pix6.agoda.net/hotelImages/6987623/0/caba233a91b5bae69ea1d722b7733ed5.jpg?s=1024x768',
                  31.5613,
                  74.3297,
                  "Holiday Inn Suites"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://r-cf.bstatic.com/images/hotel/max1280x900/788/78824537.jpg',
                  31.5619,
                  74.3302,
                  "Luxus Grand Hotel"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://content.r9cdn.net/rimg/himg/2c/8f/e3/hotelsdotcom-702739680-538b79d7_w-752771.jpg?width=1200&height=630&crop=false',
                  31.5095,
                  74.3417,
                  "Hotel MayFair Inn"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://www.tmhotels.com/wp-content/uploads/2018/10/DX3B4551.jpg',
                  33.6047,
                  73.1183,
                  "Shelton Hotel"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              // shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(restaurantName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            restaurantName,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "4.1",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(946)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Pakistani \u00B7 PKR\u00B7 ---",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 07:00 ",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          GoogleMap(
            // mapType: MapType.normal,
            initialCameraPosition:
                CameraPosition(target: LatLng(24.8607, 67.0011), zoom: 12),
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;

              _controller.complete(controller);
            },
            markers: {
              gramercyMarker,
              bernardinMarker,
              blueMarker,
              a,
              b,
              c,
              d,
              e,
              f,
              g,
              h,
              i,
              j,
              k,
              l,
              m,
              n,
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 88.0, left: 15.0),
            child: ClipOval(
              child: Material(
                color: Colors.white, // button color
                child: InkWell(
                  splashColor: Colors.blueGrey, // inkwell color
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Icon(Icons.my_location),
                  ),
                  onTap: () {
                    _getCurrentLocation();
                  },
                ),
              ),
            ),
          ),
          Positioned(
              top: 30.0,
              right: 15.0,
              left: 15.0,
              child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Look for a spot",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: searchandNavigate,
                          iconSize: 30.0,
                        )),
                    onChanged: (val) {
                      setState(() {
                        searchAddr = val;
                      });
                    },
                  )))
        ],
      ),
    );
  }

  searchandNavigate() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) => {
          _mapController.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(result[0].position.latitude,
                      result[0].position.longitude),
                  zoom: 10.0)))
        });
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

Marker gramercyMarker = Marker(
  markerId: MarkerId('Ramada'),
  position: LatLng(24.8942, 67.1556),
  onTap: () {
    MapUtils.openMap(24.8942, 67.1556);
  },
  infoWindow: InfoWindow(title: 'Ramada Restraunt'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker bernardinMarker = Marker(
  markerId: MarkerId('Beach Luxury Hotel'),
  position: LatLng(
    24.8434,
    66.9955,
  ),
  onTap: () {
    MapUtils.openMap(
      24.8434,
      66.9955,
    );
  },
  infoWindow: InfoWindow(title: 'Beach Luxury Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker blueMarker = Marker(
  markerId: MarkerId('Pearl Continental'),
  position: LatLng(
    24.8475,
    67.0254,
  ),
  onTap: () {
    MapUtils.openMap(
      24.8475,
      67.0254,
    );
  },
  infoWindow: InfoWindow(title: 'Pearl Continental'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker a = Marker(
  markerId: MarkerId('Hotel Crown Inn'),
  position: LatLng(
    24.8583,
    67.0241,
  ),
  onTap: () {
    MapUtils.openMap(
      24.8583,
      67.0241,
    );
  },
  infoWindow: InfoWindow(title: 'Hotel Crown Inn'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker b = Marker(
  markerId: MarkerId('Swat View Hotel'),
  position: LatLng(
    34.7972366,
    72.40366,
  ),
  onTap: () {
    MapUtils.openMap(
      34.7972366,
      72.40366,
    );
  },
  infoWindow: InfoWindow(title: 'Swat View Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker c = Marker(
  markerId: MarkerId('Swat Serena Hotel'),
  position: LatLng(
    34.7972366,
    73.40366,
  ),
  onTap: () {
    MapUtils.openMap(
      34.7972366,
      73.40366,
    );
  },
  infoWindow: InfoWindow(title: 'Swat Serena Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker d = Marker(
  markerId: MarkerId('Hotel de Papáe'),
  position: LatLng(
    33.7209133,
    73.0790253,
  ),
  onTap: () {
    MapUtils.openMap(
      33.7209133,
      73.0790253,
    );
  },
  infoWindow: InfoWindow(title: 'Hotel de Papáe'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker e = Marker(
  markerId: MarkerId('Hotel DE Palazzo'),
  position: LatLng(
    33.7043,
    72.9790,
  ),
  onTap: () {
    MapUtils.openMap(33.7043, 72.9790);
  },
  infoWindow: InfoWindow(title: 'Hotel DE Palazzo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker f = Marker(
  markerId: MarkerId('Zifan Hotel'),
  position: LatLng(
    24.8625,
    67.0738,
  ),
  onTap: () {
    MapUtils.openMap(24.8625, 67.0738);
  },
  infoWindow: InfoWindow(title: 'Zifan Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker g = Marker(
  markerId: MarkerId('Movenpick Hotel'),
  position: LatLng(
    24.8467,
    67.0261,
  ),
  onTap: () {
    MapUtils.openMap(24.8467, 67.0261);
  },
  infoWindow: InfoWindow(title: 'Movenpick Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker h = Marker(
  markerId: MarkerId('Avari Towers'),
  position: LatLng(
    24.8527,
    67.0323,
  ),
  onTap: () {
    MapUtils.openMap(24.8527, 67.0323);
  },
  infoWindow: InfoWindow(title: 'Avari Towers'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker i = Marker(
  markerId: MarkerId('Pearl Continental Lahore'),
  position: LatLng(
    31.5526,
    74.3384,
  ),
  onTap: () {
    MapUtils.openMap(31.5526, 74.3384);
  },
  infoWindow: InfoWindow(title: 'Pearl Continental Lahore'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker j = Marker(
  markerId: MarkerId('Nishat Hotel'),
  position: LatLng(
    31.5069,
    74.3561,
  ),
  onTap: () {
    MapUtils.openMap(31.5069, 74.3561);
  },
  infoWindow: InfoWindow(title: 'Nishat Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker k = Marker(
  markerId: MarkerId('Holiday Inn Suites'),
  position: LatLng(
    31.5613,
    74.3297,
  ),
  onTap: () {
    MapUtils.openMap(31.5613, 74.3297);
  },
  infoWindow: InfoWindow(title: 'Holiday Inn Suites'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker l = Marker(
  markerId: MarkerId('Luxus Grand Hotel'),
  position: LatLng(
    31.5619,
    74.3302,
  ),
  onTap: () {
    MapUtils.openMap(31.5619, 74.3302);
  },
  infoWindow: InfoWindow(title: 'Luxus Grand Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker m = Marker(
  markerId: MarkerId('Hotel MayFair Inn'),
  position: LatLng(
    31.5095,
    74.3417,
  ),
  onTap: () {
    MapUtils.openMap(31.5095, 74.3417);
  },
  infoWindow: InfoWindow(title: 'Hotel MayFair Inn'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker n = Marker(
  markerId: MarkerId('Shelton Hotel'),
  position: LatLng(
    33.6047,
    73.1183,
  ),
  onTap: () {
    MapUtils.openMap(33.6047, 73.1183);
  },
  infoWindow: InfoWindow(title: 'Shelton Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

class MapUtils {
  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
