import 'package:flutter/material.dart';
import 'homePage.dart';
import 'heroPage.dart';
import 'gameTrailerPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Eigen App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: EigenApp(),
    );
  }
}

class EigenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Eigen App"),
        ),
        bottomNavigationBar: const TabBar(
          indicatorColor: Colors.blueAccent,
          labelColor: Colors.blueAccent,
          tabs: [
            Tab(icon:Icon(Icons.home), text: 'welkom'),
            Tab(icon:Icon(Icons.home), text: 'welkom'),
            Tab(icon:Icon(Icons.home), text: 'welkom')
          ]
        ),
        body: TabBarView(
          children: [
            HomePage(),
            HeroPage(),
            GameTrailerPage()
          ],
        )
      ),
    );
  }
}