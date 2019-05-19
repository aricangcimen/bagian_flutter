import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'simple Note',
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
        padding : EdgeInsets.all(8.0),
        child : Image.asset("img/logo.png")),
        title: Text("SimpleNote", style: TextStyle(color: Colors.white,fontSize: 25.0 , 
        fontWeight: FontWeight.w300 )
        
        ),
        backgroundColor : Colors.purple
      ),
      backgroundColor: Colors.grey,
    );
  }
}
