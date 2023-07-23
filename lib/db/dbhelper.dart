import 'package:notify/models/task.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "task";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          print("creating a new one");
          return db.execute("CREATE TABLE $_tableName("
              "_id INTEGER PRIMARY KEY AUTOINCREMENT,"
              "title  STRING, note TEXT, date STRING,"
              "startTime STRING, endTime STRING,"
              "color INTEGER,"
              "isCompleted BOOLEAN)");
        },
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(Task? task) async {
    print("insert function called");
    return await _db?.insert(_tableName, task!.toJson()) ?? 1;
  }
}
