import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'itemsPage.dart';
import 'heroPage.dart';
import 'gameTrailerPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Eigen App",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: const Color.fromARGB(255, 202, 196, 146),
        ),
        home: EigenApp(),
        debugShowCheckedModeBanner: false);
  }
}

class EigenApp extends StatelessWidget {
  bool TavernVisible = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Eigen App"),
              backgroundColor: const Color.fromRGBO(79, 45, 30, 1),
            ),
            bottomNavigationBar: const TabBar(
                indicatorColor: Color.fromRGBO(79, 45, 30, 1),
                labelColor: Color.fromRGBO(79, 45, 30, 1),
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.account_circle), text: 'Characters'),
                  Tab(icon: Icon(Icons.colorize), text: 'Items'),
                  Tab(icon: Icon(Icons.play_arrow), text: 'Trailer')
                ]),
            body: TabBarView(children: [
              HomePage(),
              const HeroPage(),
              const ItemsPage(),
              const GameTrailerPage()
            ])));
  }
}
