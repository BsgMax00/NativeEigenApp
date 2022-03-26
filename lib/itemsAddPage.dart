import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemsAddPage extends StatefulWidget {
  const ItemsAddPage({Key? key}) : super(key: key);

  @override
  State<ItemsAddPage> createState() => _ItemsAddPageState();
}

class _ItemsAddPageState extends State<ItemsAddPage> {
  String? Name;
  String? ImageUrl =
      "https://static.wikia.nocookie.net/mini-warriors/images/8/89/Sword.png/revision/latest/scale-to-width-down/190?cb=20141019182054";
  int? Hitpoints;
  int? Damage;

  @override
  Widget build(BuildContext context) {
    CollectionReference Items = FirebaseFirestore.instance.collection("Items");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Eigen App"),
        backgroundColor: const Color.fromRGBO(79, 45, 30, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "what is the name of the item",
                          labelText: "Name",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      onChanged: (value) {
                        Name = value;
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "what is the hitpoint of the item",
                          labelText: "Hitpoints",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        Hitpoints = int.parse(value);
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "what is the damage of the item",
                          labelText: "Damage",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        Damage = int.parse(value);
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: (ElevatedButton(
                        onPressed: () async => {
                              await Items.add({
                                "name": Name,
                                "imageUrl": ImageUrl,
                                "hitpoints": Hitpoints,
                                "damage": Damage
                              }),
                              await showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("data has been send"),
                                      content: const Text(
                                          "all the data has been succesfully send to the database."),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("ok"),
                                        )
                                      ],
                                    );
                                  }),
                              Navigator.pop(context)
                            },
                        child: const Text("send to database"))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item, style: const TextStyle(fontSize: 24)),
      );
}
