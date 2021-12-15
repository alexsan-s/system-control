import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.grey,
        primaryTextTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
          bodyText2: TextStyle(color: Colors.black54),
          headline1: TextStyle(color: Colors.black54),
          headline2: TextStyle(color: Colors.black54),
          headline3: TextStyle(color: Colors.black54),
          headline4: TextStyle(color: Colors.black54),
          headline5: TextStyle(color: Colors.black54),
          headline6: TextStyle(color: Colors.black54),
          button: TextStyle(color: Colors.black54),
          caption: TextStyle(color: Colors.black54),
          overline: TextStyle(color: Colors.black54),
          subtitle1: TextStyle(color: Colors.black54),
          subtitle2: TextStyle(color: Colors.black54),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
          bodyText2: TextStyle(color: Colors.black54),
          headline1: TextStyle(color: Colors.black54),
          headline2: TextStyle(color: Colors.black54),
          headline3: TextStyle(color: Colors.black54),
          headline4: TextStyle(color: Colors.black54),
          headline5: TextStyle(color: Colors.black54),
          headline6: TextStyle(color: Colors.black54),
          button: TextStyle(color: Colors.black54),
          caption: TextStyle(color: Colors.black54),
          overline: TextStyle(color: Colors.black54),
          subtitle1: TextStyle(color: Colors.black54),
          subtitle2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const Home(),
    );
  }
}
