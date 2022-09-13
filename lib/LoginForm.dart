import 'package:flutter/material.dart';

import 'Home.dart';
import 'Register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
              child: Text("Login Page",
                  style: TextStyle(fontSize: 30, color: Colors.orangeAccent))),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Username"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text("Login")),
          // SizedBox(
          //   height: 20,
          //   width: 200,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => HomePage()));
          //     },
          //     // color: Colors.orange,
          //     child: const Text("LOGIN"),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 295.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: const Text("Not a User? Register Here!!!")),
          )
        ],
      ),
    );
  }
}
