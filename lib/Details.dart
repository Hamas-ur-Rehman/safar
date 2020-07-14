import 'package:flutter/material.dart';
import 'package:safar/GMap.dart';
import 'package:safar/Phonenumbers.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.call),
                title: Text('Phone numbers'),
                subtitle: Text('Almost all travelling Agencies'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Phonenumbers()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.map),
                title: Text('Maps'),
                subtitle: Text('Almost all Sites'),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => GMapx()));
                },
              ),
            ),
          ],
        ));
  }
}
