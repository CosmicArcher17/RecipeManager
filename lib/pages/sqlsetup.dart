import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'notemodel.dart';

class DBhelper {
  DBhelper._init();
  static final DBhelper instance = DBhelper._init();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("C:/Users/Aadit/OneDrive/Desktop/testing.db");
    return _database!;
  }

  Future<Database> _initDB(String filepath) async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, filepath);

    return await openDatabase(
      path,
      version:
          1, onCreate:_createDB
    );
  }
   Future _createDB(Database db,int version) async{
    await db.execute('''CREATE TABLE notes(id integer primary key autoincrement, title text not null, content text not null)''');
  }

  Future<int> create(Note note) async {
    final db = await instance.database;
    return await db.insert('notes', note.toMap());
  }

  Future<List<Note>> readAllNotes() async {
    final db = await instance.database;
    final result = await db.query('notes');
    return result.map((json) => Note.fromMap(json)).toList();
  }

  Future<int> update(Note note) async {
    final db = await instance.database;
    return await db.update(
      'notes',
      note.toMap(),
      where: 'id=?',
      whereArgs: [note.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      'notes',
      where: 'id=?',
      whereArgs: [id],
    );
  }

  Future close() async{
    final db=await instance.database;
    db.close();
  }
}
