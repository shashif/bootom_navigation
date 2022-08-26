import 'package:flutter/material.dart';

import 'one.dart';
import 'two.dart';
import 'three.dart';

void main(){
  runApp(const MaterialApp(
    title: "Bottom Navigation",
    home: HomePage(),
  ));
}



class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;
  final screens=[
    one(),
    two(),
    three(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
      ),
      body: screens[index],



      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.orange,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize:14,fontWeight: FontWeight.w500 )
          )
        ),
        child: NavigationBar(
          height: 70,
          backgroundColor: Colors.teal,
          selectedIndex: index,
          onDestinationSelected: (index)=>
          setState(() {
            this.index=index;
          }),
          destinations: [

            NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home'),


            NavigationDestination(
                icon: Icon(Icons.message),
                label: 'Message'),


            NavigationDestination(
                icon: Icon(Icons.call),
                label: 'CAll'),



          ],
        ),
      ),

    );
  }
}
