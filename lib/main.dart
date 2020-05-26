import 'package:app_mascota/src/pages/pages_home.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mascota',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context)=>PageHome(),
      },
    );
  }

  



}