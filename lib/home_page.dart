import 'package:flutter/material.dart';
import 'package:flutter_sqlite_com_flutter/database/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _database();
  }

  Future<void> _database() async {
    final database = await DatabaseSqLite().openConnection();

    // database.insert('teste', {'nome': 'Davi Braga'});

    // database.delete(
    //   'teste', where: 'nome = ?', whereArgs: ['Davi Braga']
    // );

    // database.update('teste', {'nome': 'Academia do Flutter'},
    //  where: 'nome = ?', whereArgs: ['Davi Braga']
    //  );

    // var result = await database.query('teste');
    // print(result);

    // database.rawInsert(
    //     'insert into teste values(null, ?)', ['Lidia']);

    // database.rawUpdate(
    // 'update  teste set nome = ? where id = ?', ['Davi Fera da Massa', 4]);

    // database.rawDelete(
    // 'delete from teste where id = ?', [6]);

    var result = await database.rawQuery('select * from teste');
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
