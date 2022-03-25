import 'package:flutter/material.dart';

class HeroInfoPage extends StatelessWidget {
  const HeroInfoPage({Key? key, required this.data, required this.index})
      : super(key: key);

  final dynamic data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Eigen App"),
          backgroundColor: const Color.fromRGBO(79, 45, 30, 1),
        ),
        body: Container(
          child: Column(children: [
            Center(child: Text(data.docs[index]['name'])),
            Center(child: Text(data.docs[index]['description'])),
            Center(child: Text(data.docs[index]['recruitment'])),
            Center(child: Text(data.docs[index]['troop'])),
            Center(child: Text(data.docs[index]['restrain'])),
            Center(child: Text(data.docs[index]['attackRange'].toString())),
            Center(child: Text(data.docs[index]['movementSpeed'].toString())),
            Center(child: Text(data.docs[index]['weakness']))
          ]),
        ));
  }
}
