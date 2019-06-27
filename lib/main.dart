import 'package:dribble_events/internal/ui_colors.dart';
import 'package:dribble_events/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drible Events',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: UIColors.color4,
        appBarTheme: AppBarTheme(
          color: UIColors.color4,
          elevation: 0.0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
