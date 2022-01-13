import 'package:flutter/material.dart';
import 'package:telegramarchieve/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Archieve',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: '/',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}

