import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginForm.dart';

void main() {
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplash()));
}
class MySplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySplashState();
}
class MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v978-background-02-kpzgw7o8.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=e62663bb68a9df004c04635304ebb5f8")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/images/businesses.png"),
                width: 200,
                height: 200,
              ),
              Text(
                "My First App",
                style: TextStyle(fontSize: 30, color: Colors.pink),
              )
            ],
          ),
        ),
      ),
    );
  }
}
