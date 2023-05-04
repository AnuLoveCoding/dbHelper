import 'dart:async';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DbHelperData{

  static Database ? _db;
    // DataBase Name;
    static const String DATABASE_NAME = 'Students.db';
    // Create Table in DataBase;
    static const String TABLE_NAME = 'Signupform1';
    // DataBase Version
    static const int DATABASE_VERSION = 1;

    //===============Columns=========//

    static const String userid = 'userid';
    static const String name = 'name';
    static const String email = 'email';
    static const String pass = 'pass';
    static const String mob = 'mobile';

//    =========Create Database //

      Future<Database> get db async{
        if(_db!= null){
          return _db!;
        }
        _db = await createDataBase();
        return _db!;
      }

  createDataBase() async {
    io.Directory docdic = await getApplicationDocumentsDirectory();
    String path = join(docdic.path,DATABASE_NAME);
    var db = await openDatabase(path, version: DATABASE_VERSION, onCreate : _onCreate);
    return db;
  }
 
   _onCreate(Database db, int version) async {
        await db.execute('create table $TABLE_NAME('
          "$userid Text,"
          "$name Text,"
          "$email Text,"
          "$pass Text"
           "$mob Text,"
            "PRIMARY KEY ($userid)"")"
        );
   }


  // =======Insert DATA Into A DataBase======= //

    Future<int>InsertData(String id, String name, String email, String pass, String mob) async{
        var dbClient = await db;
        var map = Map<String, dynamic>();
        map = {'userid' : id, 'name' : name, 'email' : email, 'password' : pass, 'mobile': mob};
        var res = await dbClient. insert('$TABLE_NAME', map);
        return res;
    }

  }
 