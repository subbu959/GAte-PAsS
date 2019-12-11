import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbStudentManager {
  Database _database;

  Future openDb() async {
    if (_database == null) {
      _database = await openDatabase(
          join(await getDatabasesPath(), "ss.db"),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute(         
           "CREATE TABLE entry(id INTEGER PRIMARY KEY autoincrement, name TEXT, time TEXT,company TEXT,purpose TEXT,location TEXT)",
           
            );
      } );
    }
  }

  Future<int> insertStudent(Entry entry) async {
    await openDb();
    return await _database.insert('entry', entry.toMap());
  }

  Future<List<Entry>> getStudentList() async {
    await openDb();
    final List<Map<String, dynamic>> maps = await _database.query('entry');
    return List.generate(maps.length, (i) {
      return Entry(
          id: maps[i]['id'], name: maps[i]['name'] , company:maps[i]['company'], location: maps[i]['location'], purpose: maps[i]['purpose'], time: maps[i]['time']);
    });
  }

  
  
}

class Entry {
  int id;
  String name;
  String time;
  String company;
  String purpose;
  String location;
  Entry({@required this.name, @required this.time,@required this.company,@required this.purpose,@required this.location, this.id, course});
  Map<String, dynamic> toMap() {
    return {'name': name, 'time': time, 'company': company,'purpose': purpose,'location':location};
  }
}
