import 'package:coffeasy/models/appuser.dart';
import 'package:coffeasy/screens/home/home.dart';
import 'package:coffeasy/screens/services/auth.dart';
import 'package:coffeasy/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:coffeasy/screens/introduction.dart';
import 'package:coffeasy/screens/userwelcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      catchError: (_, __) => null,
      initialData: null,
      child: MaterialApp(
        routes: {
          '/': (context) => Introduction(),
          '/userwelcome': (context) => UserWelcome(),
          '/wrapper': (context) => Wrapper(),
          '/home': (context) => Home(),
        },
      ),
    );
  }
}
