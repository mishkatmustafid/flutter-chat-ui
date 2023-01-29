// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
import 'package:flutter_chat_ui/widgets/favorite_contacts.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

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
            const CategorySelector(),
            Expanded(
              child: Container(
                height: 500.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Column(children: const <Widget>[
                  FavoriteContacts(),
                  ReecentChats()
                ]),
              ),
            ),
          ],
        ));
  }
}
