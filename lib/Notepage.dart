import 'package:flutter/material.dart';
import 'package:BAGIAN_FLUTTER/DBHelper.dart';
import 'package:BAGIAN_FLUTTER/mynote.dart';


class Notepage  extends StatefulWidget {
  @override
  
  Notepage(this.mynote, this.isNew);
  final Mynote _mynote;
  final bool _isNew;
  _Notepage State createState() => _Notepage State();
}

class _Notepage State extends State<Notepage > {
 String title;
  @override
  Widget build(BuildContext context) {
   
   if(widget._isNew){
     title = "New Note";

   }
   
   
    return scaffold(
      appBar:  AppBar(title: Text(title , style: TextStyle(color: Colors.white , fontSize = 20.0)) )
      
    );
  }
}
