import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HeroAddPage extends StatefulWidget {
  const HeroAddPage({Key? key}) : super(key: key);

  @override
  State<HeroAddPage> createState() => _HeroAddPageState();
}

class _HeroAddPageState extends State<HeroAddPage> {
  String? choice = "Tavern";
  bool othersVisible = false;

  String? Name;
  String? ImageUrl =
      "https://static.wikia.nocookie.net/mini-warriors/images/a/a6/Cannon.png/revision/latest/scale-to-width-down/310?cb=20141007022925";
  String? Recruitment = "tavern";
  String? Troop;
  String? Restrain;
  int? AttackRange;
  int? MovementSpeed;
  String? Weakness;
  String? Description;

  @override
  Widget build(BuildContext context) {
    CollectionReference Heroes =
        FirebaseFirestore.instance.collection("Heroes");
    final items = ['Tavern', 'others'];

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
                          hintText: "what is the name of the character",
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
              child: Row(children: [
                Expanded(
                  child: Container(
                      child: (DropdownButton<String>(
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => {
                          if (choice == "others")
                            {othersVisible = false}
                          else
                            {othersVisible = true},
                          choice = value
                        }),
                    value: choice,
                    isExpanded: true,
                  ))),
                )
              ]),
            ),
            Visibility(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Where can you recruit this character",
                            labelText: "Recruitment",
                            labelStyle:
                                TextStyle(fontSize: 24, color: Colors.black),
                            border: InputBorder.none),
                        onChanged: (value) {
                          Recruitment = value;
                        },
                      ),
                    )
                  ],
                ),
              ),
              visible: othersVisible,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "what kinda troop is this character",
                          labelText: "Troops",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      onChanged: (value) {
                        Troop = value;
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
                          hintText: "What is the characters Restrain",
                          labelText: "Restrain",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      onChanged: (value) {
                        Restrain = value;
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
                          hintText:
                              "What is the attack range of this character",
                          labelText: "Attack Range",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        AttackRange = int.parse(value);
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
                          hintText:
                              "What is the movement speed of this character",
                          labelText: "Movement Speed",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        MovementSpeed = int.parse(value);
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
                          hintText: "What is the weakness of this character",
                          labelText: "Weakness",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: InputBorder.none),
                      onChanged: (value) {
                        Weakness = value;
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
                        hintText: "give the character a description",
                        labelText: "Description",
                        labelStyle:
                            TextStyle(fontSize: 24, color: Colors.black),
                        border: InputBorder.none,
                      ),
                      maxLines: 4,
                      maxLength: 250,
                      onChanged: (value) {
                        Description = value;
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
                              await Heroes.add({
                                "name": Name,
                                "imageUrl": ImageUrl,
                                "recruitment": Recruitment,
                                "troop": Troop,
                                "restrain": Restrain,
                                "attackRange": AttackRange,
                                "movementSpeed": MovementSpeed,
                                "weakness": Weakness,
                                "description": Description
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
