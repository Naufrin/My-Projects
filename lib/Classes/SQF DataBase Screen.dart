import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'SQF DataModel Screen.dart';

class DB {
  Future<Database> initDB() async {
    // create database
    String path = await getDatabasesPath();

    return openDatabase(
      join(
        //set databse path
        path,
        //set databse Name
        "Mydb.db",
      ),
      onCreate: (database, version) async {
        //crete database table and variable
        await database.execute("""
          CREATE TABLE MYTable(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            subtitle TEXT NOT NULL
          )
          """);
      },
      //version name
      version: 1,
    );
  }

//Inserting the data in to data table
  Future<bool> insertDB(DataModel dataModel) async {
    //Initialize database in sqflite and set instance name in db
    final Database db = await initDB();
    //Insert the data into MYTable databse table
    db.insert("MYTable", dataModel.toMap());
    return true;
  }

  Future<List<DataModel>> getData() async {
    final Database db = await initDB();
    //get the data from databse using query object
    final List<Map<String, Object?>> datas = await db.query("MYTable");
    return datas.map((e) => DataModel.fromMap(e)).toList();
  }

  Future<void> updateData(DataModel dataModel, int id) async {
    final Database db = await initDB();
    // update the data into databse using id locations
    await db
        .update("MYTable", dataModel.toMap(), where: "id=?", whereArgs: [id]);
  }

  Future<void> deleteData(int id) async {
    final Database db = await initDB();
    //delete the data using id
    await db.delete("MYTable", where: "id=?", whereArgs: [id]);
  }
}
