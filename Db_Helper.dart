import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const String dbName = 'user_transactions.db';
  static const String tableName = 'transactions';

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final String path = await getDatabasesPath();
    final String fullPath = join(path, dbName);
    return await openDatabase(fullPath, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableName (
        id INTEGER PRIMARY KEY,
        name TEXT,
        address TEXT,
        productType TEXT,
        orderAmount REAL,
        orderDate TEXT,
        paymentType TEXT,
        paymentAmount REAL
      )
    ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final Database db = await database;
    return await db.insert(tableName, row);
  }
}
