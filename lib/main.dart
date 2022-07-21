import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title:const Text("Home Screen"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        color:Colors.black45
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
        },
        child: const Icon(Icons.add),


      ),

    );
  }
}



class MyApp extends StatelessWidget {
  bool isDart = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: true,
      title: "Hello",
      theme: ThemeData(
        brightness:  isDart==false? Brightness.light:Brightness.dark,
        primarySwatch: Colors.red,
        ////Ternary Operation-> Condiotion ? if true : if false
      ),
    );
  }
}
