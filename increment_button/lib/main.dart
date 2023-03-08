import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() {
    return new _RootPageState();
  }
}

class _RootPageState extends State<RootPage> {
  int data=0;
  int colorIndex=0;
  List<Color>colorList=[
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.black,
    Colors.purple,
    Colors.pink,
    Colors.orange,
  ];
  void changeSomething(){
    data++;
    colorIndex=data%colorList.length;
    setState(() {
      
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEXTER"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 50,
        ),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:   [
            ElevatedButton(
              onPressed: changeSomething, child:const Text("Click Me",
              style: TextStyle(fontSize: 40),
              )
              ),
             Text(
              
              "$data",
              style: TextStyle(
                fontSize: 50,
                backgroundColor: colorList[colorIndex],
                color:Colors.white
              ),

            ),
            const Text(
              "Times you clicked",
              style: TextStyle(
                backgroundColor: Colors.green,
                fontSize: 50,
                color:Colors.white
              ),
            )
          ],//children
          
        ),
      ),
    );
  }
}
