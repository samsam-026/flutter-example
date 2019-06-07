import 'package:flutter/material.dart';
import 'task.dart';
import 'register.dart';
import 'splash.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/task': (BuildContext context) => TaskPage(title: 'Task'),
          '/home': (BuildContext context) => HomePage(title: 'Home'),
          '/login': (BuildContext context) => LoginPage(),
          '/register': (BuildContext context) => RegisterPage(),
        });
  }
}
