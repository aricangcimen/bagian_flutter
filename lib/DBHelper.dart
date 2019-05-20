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
void _oncreate (Database db , int version) async {
  await db.execute("CREATE TABLE mynote(id INTEGER PRIMARY KEY , title TEXT , note TEXT , createDate TEXT ,
   updateDate TEXT , sortDate TEXT )");
   print ("DB Created");

  }

Future<int> saveNot(Mynote mynote) async {

var dbClient = await db;
int res = await dbClient.insert("mynote",toMap());
print("data inserted");
return res;
}



}
