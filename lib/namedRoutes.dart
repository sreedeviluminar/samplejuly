import 'package:flutter/material.dart';
import 'package:samplejuly/Register.dart';
import 'package:samplejuly/Tables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // hide the debug banner
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
      routes: {
        'table': (BuildContext ctx) =>  MyTable(),
        'Register': (BuildContext ct) => Register(),
      },
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Register');
                  },
                  child: const Text('Register')),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('table');
                  },
                  child: const Text('Table')),
            ],
          ),
        ));
  }
}

// Settings Page
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
      ),
    );
  }
}
