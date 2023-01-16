import 'package:flutter/material.dart';
import 'package:designs/src/screens/basic_design.dart';
import 'package:designs/src/screens/scroll_design.dart';
import 'package:designs/src/screens/home_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design'  : (_) => const BasicDesignScreen(),
        'scroll_design' : (_) => const ScrollScreen(),
        'home_screen'   : (_) => const HomeScreen(),
      },
    );
  }
}