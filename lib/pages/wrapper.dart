
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:modifyz/models/currentuser.dart';
import 'package:modifyz/db/auth.dart';
import 'package:modifyz/pages/home.dart';






class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return HomePage();
    }

  }
}
