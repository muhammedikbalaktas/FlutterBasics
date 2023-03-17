import 'package:flutter/material.dart';
class MyCardView extends StatefulWidget {
  const MyCardView({super.key});

  @override
  State<MyCardView> createState() => _MyCardViewState();
}

class _MyCardViewState extends State<MyCardView> {
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Screen3")),
    );
  }  
}