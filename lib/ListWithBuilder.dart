import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => List2State();
}

class List2State extends State {
  List<String> fruits = ["Apple", "Orange", "Banana", "Grapes"];

  List<String> images = [
    "assets/images/apple.png",
    "assets/images/orange.png",
    "assets/images/bananas.png",
    "assets/images/grapes.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView.Builder"),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext, index) {
              return Card(
                child: ListTile(
                  leading: Image.asset(images[index]),
                  title: Text(fruits[index]),
                ),
              );
            },
            separatorBuilder: (BuildContext, index) {
              return const Divider(
                thickness: 3,
                color: Colors.pink,
              );
            },
            itemCount: images.length)

        // body: ListView.builder(
        //   itemBuilder: (BuildContext, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Image.asset(images[index]),
        //         title: Text(fruits[index]),
        //       ),
        //     );
        //   },
        //   itemCount: images.length,
        // )
        );
  }
}
