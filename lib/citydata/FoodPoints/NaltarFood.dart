import 'package:flutter/material.dart';
import 'package:safar/Details.dart';
import 'package:safar/GMap.dart';
import 'package:safar/HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class NaltarFood extends StatefulWidget {
  @override
  NaltarFoodState createState() => NaltarFoodState();
}

class NaltarFoodState extends State<NaltarFood> {
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

  List food = [
    // {
    //   'name': "",
    //   'address': "",
    //   'imagex': "",
    //   'call': '',
    //   'url': "",
    // },
    // {
    //   'name': "",
    //   'address': "",
    //   'imagex': "",
    //   'call': '',
    //   'url': "",
    // },
    // {
    //   'name': "",
    //   'address': "",
    //   'imagex': "",
    //   'call': '',
    //   'url': "",
    // },
    // {
    //   'name': "",
    //   'address': "",
    //   'imagex': "",
    //   'call': '',
    //   'url': "",
    // },
    // {
    //   'name': "",
    //   'address': "",
    //   'imagex': "",
    //   'call': '',
    //   'url': "",
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Naltar Valley Food"),
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
                Icons.call,
                color: Colors.black,
              ),
              title: Text("Call", style: TextStyle(color: Colors.grey))),
          // new BottomNavigationBarItem(icon: new Icon(Icons.favorite,color: Colors.black,),title: Text("Favorite",style: TextStyle(color: Colors.grey)),),
        ],
        onTap: _onTap,
      ),
      body: Center(child: Text('Coming soon')),
      // new ListView.builder(
      //   itemCount: food.length,
      //   itemBuilder: (context, index) {
      //     return new Padding(
      //       padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      //       child: new Card(
      //           elevation: 5.0,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(16.0),
      //           ),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[
      //               new ClipRRect(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: new Radius.circular(16.0),
      //                   topRight: new Radius.circular(16.0),
      //                 ),
      //                 child: new Image.network('${food[index]['imagex']}',
      //                     fit: BoxFit.cover),
      //               ),
      //               new Padding(
      //                 padding: EdgeInsets.all(16.0),
      //                 child: new Column(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Row(
      //                         children: [
      //                           Expanded(
      //                             child: new Text(
      //                               '${food[index]['name']}'.toUpperCase(),
      //                               style:
      //                                   Theme.of(context).textTheme.headline6,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       new SizedBox(height: 10.0),
      //                       new Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: <Widget>[
      //                           new Text('${food[index]['address']}',
      //                               style: TextStyle(fontSize: 10)),
      //                           Row(
      //                             children: [
      //                               new RaisedButton.icon(
      //                                 onPressed: () {
      //                                   customLaunch(
      //                                       'tel: ${food[index]['call']}');
      //                                 },
      //                                 icon: Icon(Icons.call),
      //                                 label: Text("Call"),
      //                                 color: Colors.red[200],
      //                                 elevation: 10.0,
      //                               ),
      //                               new RaisedButton.icon(
      //                                 onPressed: () {
      //                                   customLaunch('${food[index]['url']}');
      //                                 },
      //                                 icon: Icon(Icons.access_time),
      //                                 label: Text('Details'),
      //                                 color: Colors.amber,
      //                                 elevation: 10.0,
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                     ]),
      //               )
      //             ],
      //           )),
      //     );
      //   },
      // ),
    );
  }
}
