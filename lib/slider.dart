import 'package:flutter/material.dart';

void main() {
  runApp(SlidE());
}

class SlidE extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SlidEstate();
}

class SlidEstate extends State<SlidE> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("volume",style: TextStyle(fontSize: 25.0),),
            Slider(
                activeColor: Colors.green,
                inactiveColor: Colors.red,
                value: _currentValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentValue.toString(),
                thumbColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}