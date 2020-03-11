import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'db/moor_database.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => MyDatabase()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<FileManageData> list = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('text'),
              onPressed: () async {
                await Provider.of<MyDatabase>(context, listen: false).insertFileData;
                final res = await Provider.of<MyDatabase>(context, listen: false).allFileData;
                print(res);
                setState(() {
                  list = res;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text(list[index].titleCode));
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () async {
          await Provider.of<MyDatabase>(context, listen: false).insertFileData;
          final rs = await Provider.of<MyDatabase>(context, listen: false).allFileData;
          rs.map((e) => print(e));
        },
      ),
    );
  }
}
