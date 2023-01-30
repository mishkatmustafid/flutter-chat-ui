import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/chat_screen.dart';
import 'package:flutter_chat_ui/homepage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());

      // case '/chat':
      //   return MaterialPageRoute(
      //       builder: (_) => const ChatScreen(
      //             user: User(),
      //           ));

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: const Center(
        child: Text('ERROR!'),
      ),
    );
  });
}

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const MyHomePage(),
};
