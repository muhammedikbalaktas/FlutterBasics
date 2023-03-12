import 'package:flutter/material.dart';
import 'package:main_app/classes/increment_button.dart';

import 'classes/list_view.dart';
import 'classes/slide_show.dart';
import 'classes/input_output.dart';
import 'classes/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(

        body: BottomNav(),
      )
    );
  }
}


