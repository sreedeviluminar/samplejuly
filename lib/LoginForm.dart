import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("LoginPage"),
     ),
     body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: const [
         Center(child:Text("Login Page")),
         TextField(
           decoration:InputDecoration() ,
         ),
         TextField(
           decoration:InputDecoration() ,
         )
       ],
     ),
   );
  }

}