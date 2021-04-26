import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          title: 'Welcome to Flutter',
          theme:
              ThemeData(primarySwatch: Colors.blue, brightness: isDarkTheme()),
          initialRoute: '/',
          routes: {'/': (context) => LoginPage(), '/home': (context) => Home()},
        );
      },
      animation: AppController.instance,
    );
  }

  Brightness isDarkTheme() {
    return AppController.instance.isDarkTheme
        ? Brightness.dark
        : Brightness.light;
  }
}
