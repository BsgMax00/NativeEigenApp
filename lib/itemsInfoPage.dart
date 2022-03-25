import 'package:flutter/material.dart';

class ItemsInfoPage extends StatelessWidget {
  const ItemsInfoPage({Key? key, required this.data, required this.index})
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
            Center(child: Text(data.docs[index]['damage'].toString())),
            Center(child: Text(data.docs[index]['hitpoints'].toString()))
          ]),
        ));
  }
}
