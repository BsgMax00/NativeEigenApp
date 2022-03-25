import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eigen_app/itemsInfoPage.dart';
import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> Items =
        FirebaseFirestore.instance.collection('Items').snapshots();

    return Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: Items,
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
                      return makeItemTile(data, index);
                    });
              }
            }));
  }

  ListTile makeItemTile(data, index) {
    return ListTile(
      title: Center(child: Text(data.docs[index]['name'])),
      subtitle: Center(child: Text(data.docs[index]['damage'].toString())),
      trailing: ClipOval(
          child: Image.network(data.docs[index]['imageUrl'].toString())),
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemsInfoPage(
                      data: data,
                      index: index,
                    )))
      },
    );
  }
}
