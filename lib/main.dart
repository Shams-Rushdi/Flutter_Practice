//import 'dart:html';

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/my_custom_tile.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());

}
class Home extends StatelessWidget {

  List<String> userList = ['Home Page','Category','Favorite'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
         children: [
           const UserAccountsDrawerHeader(
             accountName: const Text("Abu Rushed"),
             accountEmail: const Text("aburushed@gmail.com"),
             currentAccountPicture: CircleAvatar(
               child:Icon(Icons.person),
             ),
             
           ),
          MyCustomTile(title:userList[0],icon: null,onClickEvent:(){
            Navigator.pop(context);
            Fluttertoast.showToast(msg:userList[0]);

          },
            subtitle: "30 min ago",
            trailing: "10",
          ),

           MyCustomTile(title:userList[1],icon: null,onClickEvent:(){
             Navigator.pop(context);
           }),

           ListTile(
             onTap: (){
              Navigator.pop(context);//drawar back
             },

             title: Text(userList[0]),
             leading: CircleAvatar(
               //child: Text("H"),
               child: Icon(Icons.person),
             ),
             trailing: Text("10"),

           ),
           const Divider(height:1,),
           ListTile(
             onTap: (){
               Navigator.pop(context);//drawar back
             },

             title: Text(userList[1]),
             leading: CircleAvatar(
               child: Text("C"),
               //child: Icon(Icons.person),
             ),
             trailing: Text("10"),

           ),
           const Divider(height:1,),
           ListTile(
             onTap: (){
               Navigator.pop(context);//drawar back
             },

             title: Text(userList[2]),
             leading: CircleAvatar(
               child: Text("F"),
               //child: Icon(Icons.person),
             ),
             trailing: Text("10"),
             subtitle: Text("Favourite"),

           )

         ],
        ),
      ),

      appBar: AppBar(
        title:const Text("Home Screen"),
        actions: [
          IconButton(
            onPressed:()
            {
              Fluttertoast.showToast(msg: 'Searching......');
            },
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed:()
            {

            },
            icon: Icon(Icons.person_outlined),
          ),
          IconButton(
            onPressed:()
            {
              print("Shoping Cart Clicked");
              Fluttertoast.showToast(msg: 'Shoping Cart');
            },
            icon: Icon(Icons.shopping_cart_outlined),

          )
        ],


        elevation: 10.0,
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
      debugShowCheckedModeBanner: false,
      title: "Hello",
      theme: ThemeData(
        brightness:  isDart==false? Brightness.light:Brightness.dark,
        primarySwatch: Colors.red,
        ////Ternary Operation-> Condiotion ? if true : if false
      ),
    );
  }
}
