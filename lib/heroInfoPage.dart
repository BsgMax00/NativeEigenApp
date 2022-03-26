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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Name")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['name'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                      child: Container(
                          child: Image.network(data.docs[index]['imageUrl']),
                          width: 200,
                          height: 200))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Recruitment")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['recruitment'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Troops")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['troop'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Restrain")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['restrain'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Attack Range")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['attackRange'].toString(),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Movement Speed")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['movementSpeed'].toString(),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Weakness")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['weakness'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      const Center(
                        child: (Text("Description")),
                      ),
                      Center(
                        child: Text(
                          data.docs[index]['description'],
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
