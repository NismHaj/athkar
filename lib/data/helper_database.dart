import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class HelperDataBase {
  HelperDataBase._();
  static HelperDataBase helperDataBase = HelperDataBase._();
  static String dbName = '/taskDb.db';
  static String tableName = 'tasks';
  static String idColumn = 'id';
  static String taskNameColumn = 'taskName';
  static String taskIsCompletColumn = 'isComplet';
  Database database;
  initDatabase() async {
    database = await creatDatabase();
  }

  Future<Database> creatDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '/taskDb.db';
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''CREATE TABLE $tableName
           ($idColumn INTEGER PRIMARY KEY AUTOINCREMENT,
            $taskNameColumn TEXT,
            $taskIsCompletColumn INTEGER)''');
      },
    );
    return database;
  }
}
