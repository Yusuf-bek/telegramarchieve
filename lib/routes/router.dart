import 'package:flutter/material.dart';
import 'package:telegramarchieve/screens/archieve/archieve_page.dart';
import 'package:telegramarchieve/screens/chat/chat_page.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => ChatPage(),
        );

      case '/archieved':
        return MaterialPageRoute(
          builder: (context) => ArchieveChats(),
        );
    }
  }
}
