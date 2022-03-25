import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eigen_app/heroInfoPage.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> Heroes =
        FirebaseFirestore.instance.collection('Heroes').snapshots();

    return Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: Heroes,
            builder: (
              BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot,
            ) {
              if (snapshot.hasError) {
                return const Text('something went wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('loading');
              } else {
                final data = snapshot.requireData;

                return ListView.builder(
                    itemCount: data.size,
                    itemBuilder: (context, index) {
                      return makeHeroTile(data, index);
                    });
              }
            }));
  }

  ListTile makeHeroTile(data, index) {
    return ListTile(
      title: Center(child: Text(data.docs[index]['name'])),
      subtitle: Center(child: Text(data.docs[index]['troop'])),
      trailing: ClipOval(
          child: Image.network(data.docs[index]['imageUrl'].toString())),
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HeroInfoPage(
                      data: data,
                      index: index,
                    )))
      },
    );
  }
}
