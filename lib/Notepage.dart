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
  @override
  Widget build(BuildContext context) {
    return scaffold(
      appBar:  AppBar(title: )
      
    );
  }
}