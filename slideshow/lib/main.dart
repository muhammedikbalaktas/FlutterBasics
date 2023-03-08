import 'package:flutter/material.dart';
import 'dart:developer';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SlideShow(),
      ),
    );
  }
}

class SlideShow extends StatefulWidget {
  const SlideShow({super.key});

  @override
  State<SlideShow> createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int index = 0;
  List<String> images = [
      'https://picsum.photos/200/304',
      'https://picsum.photos/200/305',
      'https://picsum.photos/200/306',
      'https://picsum.photos/200/307',
      'https://picsum.photos/200/308',
      'https://picsum.photos/200/309',
      'https://picsum.photos/200/310',
      'https://picsum.photos/200/311',
      'https://picsum.photos/200/312',
      'https://picsum.photos/200/313',
      'https://picsum.photos/200/314'
    ];
  @override
  Widget build(BuildContext context) {
    
    

    
    void switchToLeft() {
      if (index != 0) {
        index--;
        setState(() {});
      }
    }

    void switchToRight() {
      if (index != images.length-1) {
        index++;
        setState(() {
          
        });
        
      }
    }

    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "index is $index",
                  style:const TextStyle(
                    fontSize: 50,
                    
                  ),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: switchToLeft,
                      icon: const Icon(Icons.arrow_left_sharp),
                      iconSize: 80,
                      color: Colors.orange,
                    ),
                    Container(
                        child: Image(
                      image: NetworkImage("${images[index]}", scale: 0.6),
                    )),
                    IconButton(
                      onPressed: switchToRight,
                      icon: const Icon(Icons.arrow_right_sharp),
                      iconSize: 80,
                      color: Colors.orange,
                    )
                  ],
                ),
              ],
            )));
  }
}
