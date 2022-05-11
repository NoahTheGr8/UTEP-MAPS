import 'package:flutter/material.dart';
import 'package:utepmaps_v1/constants/Theme.dart';

// screens
import 'package:utepmaps_v1/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //title: 'UTEP MAPS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: UtepMapsColors.utepBlue_1, fontFamily: 'Montserrat'),
        initialRoute: '/home',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
          //   //"/screen1": (BuildContext context) => new Screen1(),
        });
  }
}
