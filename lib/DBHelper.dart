import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'dart:async';

class DBHelper{
  static final DBHelper _instance = new DBHelper.internal();
  DBHelper.internal();

  factory DBHelper() => _instance;
  static Database _db;
  Future<Database> get db async {
    if (_db!= null) return _db;
    _db = await setDB();
    return _db;


  }

  setDB() async{
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path , "SimpleNoteDB");
    var dB = await openDatabase(path, version: 1, oncreate:  _oncreate)
    return dB

  }





}
