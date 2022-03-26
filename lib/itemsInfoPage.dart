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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const Center(
                      child: (Text("Name")),
                    ),
                    Center(
                        child: Text(
                      data.docs[index]['name'],
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                    ))
                  ],
                )),
                Expanded(
                    child: Container(
                  child: Image.network(data.docs[index]['imageUrl']),
                  width: 200,
                  height: 200,
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Center(
                        child: (Text("Hitpoints")),
                      ),
                      Center(
                          child: data.docs[index]['hitpoints'].toString() ==
                                  "-1"
                              ? const Text("has unlimited hitpoints")
                              : Text(data.docs[index]['hitpoints'].toString())),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
