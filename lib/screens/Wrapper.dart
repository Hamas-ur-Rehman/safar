import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safar/models/user.dart';
import 'package:safar/screens/authenticate/authenticate.dart';
import 'package:safar/screens/home/Home.dart';
import 'package:safar/screens/home/homi.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //switch between home and authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Homi();
    }
  }
}
