import 'dart:async';
import 'package:sqflite/sqflite.dart';

import '../../../path.dart';

class SqfliteHelper {
  static final SqfliteHelper _instance = SqfliteHelper._internal();
  static Database? _database;

  factory SqfliteHelper() {
    return _instance;
  }

  SqfliteHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    // Get the correct database path based on the platform
    final path = await getDatabasePath();

    // Open the database
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        print("Database created at $path");
      },
    );
  }

  Future<void> createTable(
      String tableName, Map<String, dynamic> schema) async {
    final db = await database;

    String columns =
        schema.entries.map((entry) => '${entry.key} ${entry.value}').join(', ');
    print(columns);
    await db.execute(
      'CREATE TABLE IF NOT EXISTS $tableName ($columns)',
    );

    print("Table $tableName created with schema: $schema");
  }

  Future<void> insertExpense(
      String tableName, Map<String, dynamic> schema) async {
    final db = await database;

    await db.insert(
      tableName,
      schema, // Assuming toJson() method exists in your model
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print("Expense inserted: ${schema}");
  }

  Future<List<Map<String, dynamic>>> getData(
    String tableName,
  ) async {
    final db = await initDatabase();
    final List<Map<String, dynamic>> expenseData = await db.query(tableName);

    return expenseData;
  }

  Future<void> clearTable(String tableName) async {
    final db = await initDatabase();
    await db.delete(tableName);
    print("All data from $tableName table cleared.");
  }

  Future<void> editTable(
      String tableName, Map<String, dynamic> newValues, int id) async {
    final db = await initDatabase();
    String setClause = newValues.keys.map((key) {
      return '$key = ?';
    }).join(', ');
    String sql = 'UPDATE $tableName SET $setClause WHERE id = ?';
    List<dynamic> values = [...newValues.values, id];
    await db.rawUpdate(sql, values);
    print("Updated item in $tableName where id = $id with values: $newValues");
  }

  Future<void> deleteRow(String tableName, int id) async {
    final db =
        await initDatabase(); // Ensure you have your database initialized

    // Perform the delete operation
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    print("Deleted row in $tableName where id = $id");
  }
}
