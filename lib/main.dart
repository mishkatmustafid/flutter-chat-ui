import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFFFEF9EB))),
      home: const MyHomePage(),
    );
  }
}
