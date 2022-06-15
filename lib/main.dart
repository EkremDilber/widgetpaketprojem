// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'emlakwidget.dart';
import 'gidakarti.dart';
import 'gonderikarti.dart';
import 'hikayeler.dart';
import 'loginekrani.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // Navigation Bar rengi
      statusBarColor: Colors.blue[600], // Status Bar rengi
      statusBarIconBrightness: Brightness.dark, // Status Bar ikonların rengi
      systemNavigationBarIconBrightness:
          Brightness.light, // Navigation Bar ikonların rengi
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'widgetpaketprojem',
      theme: ThemeData(primaryColor: Colors.blue),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        centerTitle: true,
        title: Title(
          color: Colors.blue.shade600,
          child: Text("Widget Paket Projem"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 7.0),
          Container(
            height: 100.0,
            decoration:
                BoxDecoration(color: Colors.grey[100], boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 4.0),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
                profilKartiOlustur(),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          GonderiKarti(),
          LoginEkrani(),
          EmlakWidget(),
          GidaKarti(),
        ],
      ),
    );
  }
}
