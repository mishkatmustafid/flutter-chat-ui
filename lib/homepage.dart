import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
          title: const Text('Chats',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ));
  }
}
