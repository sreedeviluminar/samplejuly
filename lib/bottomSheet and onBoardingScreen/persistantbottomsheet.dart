import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  final _gKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: _gKey,
      appBar: AppBar(
        title: Text("Flutter Bottom Sheet"),
      ),
      body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  displayBottomSheet();
                },
                child: Text("Show Bottom Sheet"),
              )
            ],
          )
      ),
    );
  }

  void displayBottomSheet() {
    _gKey.currentState?.showBottomSheet((context) {
      return Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Close Bottom Sheet"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.green,

          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      );
    }
    );
  }
}