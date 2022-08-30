import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sample App"),
        ),
        body: const Center(
          child: Text(
            "Welcome to Flutter",
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
