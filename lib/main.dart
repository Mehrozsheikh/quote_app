import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp(
    key: Key("MyApp"),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quotes",
      home: MainScreen(
        key: const Key("MainScreen"),
      ),
    );
  }
}
