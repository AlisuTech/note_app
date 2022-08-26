import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.account_circle,size:40 ,),
            title: const Text("David's Note",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,)),
            centerTitle: true,
            actions: const [
             Padding(
               padding: EdgeInsets.fromLTRB(5,0,5,0),
               child: Icon(Icons.wifi,size:40 ,),
             ),
             Padding(
               padding: EdgeInsets.fromLTRB(5,0,5,0),
               child: Icon(Icons.search,size:40 ,),
             ),
             Padding(
               padding: EdgeInsets.fromLTRB(0,0,5,0),
               child: Icon(Icons.more_vert,size:40 ,),
             ),
            ],
          ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black45,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: 2,
      items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),

      ]),
    );
  }
}