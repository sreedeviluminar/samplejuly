import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stackwidget(),
  ));
}

class stackwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(
        children: <Widget>[
          Container(
              width: 400,
              height: 400,
              color: Colors.green,
          ),
          Positioned(
            top:80 ,
            left: 90,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),

        ],
      ),
    );
  }
}