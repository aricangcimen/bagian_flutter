import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


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

  setDB() async





}
