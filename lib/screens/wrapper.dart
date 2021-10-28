import 'package:coffeasy/models/appuser.dart';
import 'package:coffeasy/screens/home/home.dart';
import 'package:coffeasy/screens/userwelcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return UserWelcome();
    } else {
      return Home();
    }
  }
}
