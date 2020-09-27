import 'package:flutter/material.dart';
import 'package:Brew_App/screens/authenticate/authenticate.dart';
import 'package:Brew_App/screens/home/home.dart';
import 'package:Brew_App/models/user.dart' as us;
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<us.User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
