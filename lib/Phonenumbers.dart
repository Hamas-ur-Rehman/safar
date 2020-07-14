import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phonenumbers extends StatefulWidget {
  @override
  _PhonenumbersState createState() => _PhonenumbersState();
}

class _PhonenumbersState extends State<Phonenumbers> {
  List num = [
    {
      'name': "Motel Reservations",
      'subtitle': "Offical Pakistan tour provider",
      'number': "051-9203223"
    },
    {
      'name': "Tour Packages Bookings",
      'subtitle': "Offical Pakistan tour provider",
      'number': "051-9272017"
    },
    {
      'name': "Flashman's Hotel",
      'subtitle': "Offical Pakistan tour provider",
      'number': "051-9272004"
    },
  ];

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not lauch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Phone Numbers"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: new ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.call),
                  title: Text("${num[index]['name']}"),
                  subtitle: Text('${num[index]['subtitle']}'),
                  onTap: () {
                    customLaunch('tel: ${num[index]['number']}');
                  },
                ),
              );
            }));
  }
}
