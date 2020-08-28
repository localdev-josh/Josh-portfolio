import 'package:flutter/material.dart';
import 'package:portfolio_josh/views/home/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Squarion'
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(title: 'HomeView'),
    );
  }
}
